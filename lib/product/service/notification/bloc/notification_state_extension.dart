import 'package:fcm_notification_service/product/service/notification/bloc/notification_bloc.dart';
import 'package:fcm_notification_service/product/service/notification/model/notification_model.dart';

/// NotificationState için extension methods
/// DRY principle: Tekrar eden maybeMap kodlarını ortadan kaldırır
extension NotificationStateX on NotificationState {
  /// Tüm state'lerden messages listesini çıkarır
  List<NotificationModel> get messages => maybeMap(
        initial: (s) => s.messages,
        messagesUpdated: (s) => s.messages,
        loading: (s) => s.messages,
        notificationReceived: (s) => s.messages,
        error: (s) => s.messages,
        orElse: () => <NotificationModel>[],
      );

  /// Okunmamış bildirim sayısını döner
  int get unreadCount => messages.where((m) => !m.isRead).length;

  /// State loading durumunda mı?
  bool get isLoading => maybeMap(
        loading: (_) => true,
        orElse: () => false,
      );

  /// State error durumunda mı?
  bool get hasError => maybeMap(
        error: (_) => true,
        orElse: () => false,
      );

  /// Error mesajını döner (varsa)
  String? get errorMessage => maybeMap(
        error: (s) => s.message,
        orElse: () => null,
      );
}
