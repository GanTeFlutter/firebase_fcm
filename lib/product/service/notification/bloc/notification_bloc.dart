import 'dart:async';

import 'package:fcm_notification_service/product/constants/notification_constants.dart';
import 'package:fcm_notification_service/product/service/notification/firebase_notification_service.dart';
import 'package:fcm_notification_service/product/service/notification/handlers/notification_type_handler.dart';
import 'package:fcm_notification_service/product/service/notification/model/notification_model.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

part 'notification_event.dart';
part 'notification_state.dart';
part 'notification_bloc.freezed.dart';

class NotificationBloc
    extends HydratedBloc<NotificationEvent, NotificationState> {
  NotificationBloc(this._notificationService)
    : super(const NotificationState.initial()) {
    on<_Initialize>(_onInitialize);
    on<_IncomingMessage>(_onIncomingMessage);
    on<_DeleteNotification>(_onDeleteNotification);
    on<_ClearAllNotifications>(_onClearAllNotifications);
    on<_MarkAsRead>(_onMarkAsRead);
  }

  final FirebaseNotificationService _notificationService;

  StreamSubscription<RemoteMessage>? _messageSubscription;

  Future<void> _onInitialize(
    _Initialize event,
    Emitter<NotificationState> emit,
  ) async {
    // DRY: Extension method kullanımı
    final currentMessages = state.messages;

    emit(NotificationState.loading(messages: currentMessages));

    try {
      // Terminated (Uygulama kapalı) durumu için kontrol.
      final initialMessage = await _notificationService.getInitialMessage();
      if (initialMessage != null) {
        add(NotificationEvent.incomingMessage(initialMessage));
        // Notification type handler'ı çalıştır
        await NotificationHandlerFactory.handleNotification(initialMessage);
      }

      _messageSubscription = _notificationService.onMessageReceived.listen(
        (message) => add(NotificationEvent.incomingMessage(message)),
      );

      emit(NotificationState.initial(messages: currentMessages));
    } on Exception catch (e) {
      if (kDebugMode) {
        print('-- ❌ NotificationBloc init error: $e');
      }
      // FirebaseCrashlytics.instance.recordError(e, StackTrace.current, reason: 'Notification init failed');
      emit(NotificationState.error(e.toString(), messages: currentMessages));
    }
  }

  Future<void> _onIncomingMessage(
    _IncomingMessage event,
    Emitter<NotificationState> emit,
  ) async {
    final message = event.message;
    final notification = message.notification;

    // DRY: Extension method kullanımı
    final currentMessages = state.messages;

    // KRITIK FIX: Terminated durumda notification null olabilir
    // Firebase Console'dan gönderilen mesajlarda data içinde title/body olur
    final title = notification?.title ??
        message.data['title'] as String? ??
        NotificationConstants.defaultNotificationTitle;
    final body = notification?.body ?? message.data['body'] as String? ?? '';

    final newNotification = NotificationModel(
      id: message.messageId ?? DateTime.now().millisecondsSinceEpoch.toString(),
      title: title,
      body: body,
      data: message.data,
      timestamp: DateTime.now(),
    );

    // Aynı ID'ye sahip bildirim zaten varsa ekleme (çift bildirim önleme)
    if (currentMessages.any((m) => m.id == newNotification.id)) {
      if (kDebugMode) {
        print(
          '-- ⚠️ Duplicate notification prevented: ${newNotification.id}',
        );
      }
      return;
    }

    final updatedMessages = [newNotification, ...currentMessages];
    final limitedMessages =
        updatedMessages.length > NotificationConstants.maxStoredNotifications
            ? updatedMessages.sublist(
                0,
                NotificationConstants.maxStoredNotifications,
              )
            : updatedMessages;

    emit(NotificationState.messagesUpdated(messages: limitedMessages));
  }

  void _onDeleteNotification(
    _DeleteNotification event,
    Emitter<NotificationState> emit,
  ) {
    // DRY: Extension method kullanımı
    final currentMessages = state.messages;

    final updatedMessages = currentMessages
        .where((notification) => notification.id != event.id)
        .toList();

    emit(NotificationState.messagesUpdated(messages: updatedMessages));
  }

  void _onClearAllNotifications(
    _ClearAllNotifications event,
    Emitter<NotificationState> emit,
  ) {
    emit(const NotificationState.messagesUpdated(messages: []));
  }

  void _onMarkAsRead(
    _MarkAsRead event,
    Emitter<NotificationState> emit,
  ) {
    // DRY: Extension method kullanımı
    final currentMessages = state.messages;

    final updatedMessages = currentMessages.map((notification) {
      if (notification.id == event.id) {
        return notification.copyWith(isRead: true);
      }
      return notification;
    }).toList();

    emit(NotificationState.messagesUpdated(messages: updatedMessages));
  }

  @override
  NotificationState? fromJson(Map<String, dynamic> json) {
    try {
      final messagesList = json['messages'] as List<dynamic>?;
      if (messagesList == null) {
        return const NotificationState.initial();
      }

      // Her bir mesajı güvenli bir şekilde parse et
      // Hatalı mesajları atla, sadece başarılı olanları ekle
      final messages = <NotificationModel>[];
      for (final item in messagesList) {
        try {
          if (item is Map<String, dynamic>) {
            final message = NotificationModel.fromJson(item);
            messages.add(message);
          }
        } on Exception catch (e) {
          // Hatalı mesajı logla ama devam et
          if (kDebugMode) {
            print('-- ⚠️ Error parsing notification: $e');
          }
        }
      }

      return NotificationState.initial(messages: messages);
    } on Exception catch (e) {
      // Tüm parsing başarısız olursa boş liste döndür
      if (kDebugMode) {
        print('-- ❌ Error parsing notifications state: $e');
      }
      return const NotificationState.initial();
    }
  }

  @override
  Map<String, dynamic>? toJson(NotificationState state) {
    // TÜM state'lerdeki mesajları kaydet - loading, error, notificationReceived dahil
    // Böylece uygulama herhangi bir anda kapansa bile veri kaybı olmaz
    return state.maybeMap(
      initial: (s) => {'messages': s.messages.map((e) => e.toJson()).toList()},
      messagesUpdated: (s) => {
        'messages': s.messages.map((e) => e.toJson()).toList(),
      },
      loading: (s) => {'messages': s.messages.map((e) => e.toJson()).toList()},
      error: (s) => {'messages': s.messages.map((e) => e.toJson()).toList()},
      notificationReceived: (s) => {
        'messages': s.messages.map((e) => e.toJson()).toList(),
      },
      orElse: () => null,
    );
  }

  @override
  Future<void> close() {
    _messageSubscription?.cancel();
    return super.close();
  }
}
