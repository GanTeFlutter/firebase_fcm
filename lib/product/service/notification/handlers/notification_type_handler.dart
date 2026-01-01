import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';

/// Bildirim türleri enum
enum NotificationType {
  general,
  chat,
  alert,
  promotion,
  systemUpdate;

  static NotificationType fromString(String? type) {
    if (type == null) return NotificationType.general;
    return NotificationType.values.firstWhere(
      (e) => e.name == type,
      orElse: () => NotificationType.general,
    );
  }
}

/// Abstract notification handler
abstract class INotificationTypeHandler {
  NotificationType get type;
  Future<void> handle(RemoteMessage message);
}

/// General/Default notification handler
class GeneralNotificationHandler implements INotificationTypeHandler {
  @override
  NotificationType get type => NotificationType.general;

  @override
  Future<void> handle(RemoteMessage message) async {
    if (kDebugMode) {
      print('-- 📋 General notification handled: ${message.messageId}');
    }
    // Genel bildirimler için özel bir işlem gerekmez
  }
}

/// Chat notification handler
class ChatNotificationHandler implements INotificationTypeHandler {
  @override
  NotificationType get type => NotificationType.chat;

  @override
  Future<void> handle(RemoteMessage message) async {
    if (kDebugMode) {
      print('-- 💬 Chat notification handled: ${message.messageId}');
    }
    // TODO: Chat sayfasına navigation veya chat badge update
    // final chatId = message.data['chatId'];
    // NavigationService.instance.navigateToChat(chatId);
  }
}

/// Alert notification handler
class AlertNotificationHandler implements INotificationTypeHandler {
  @override
  NotificationType get type => NotificationType.alert;

  @override
  Future<void> handle(RemoteMessage message) async {
    if (kDebugMode) {
      print('-- ⚠️ Alert notification handled: ${message.messageId}');
    }
    // TODO: Alert dialog göster veya özel alert sayfasına yönlendir
  }
}

/// Promotion notification handler
class PromotionNotificationHandler implements INotificationTypeHandler {
  @override
  NotificationType get type => NotificationType.promotion;

  @override
  Future<void> handle(RemoteMessage message) async {
    if (kDebugMode) {
      print('-- 🎁 Promotion notification handled: ${message.messageId}');
    }
    // TODO: Promosyon sayfasına navigation
  }
}

/// System update notification handler
class SystemUpdateNotificationHandler implements INotificationTypeHandler {
  @override
  NotificationType get type => NotificationType.systemUpdate;

  @override
  Future<void> handle(RemoteMessage message) async {
    if (kDebugMode) {
      print('-- 🔄 System update notification handled: ${message.messageId}');
    }
    // TODO: Force update veya optional update dialog
  }
}

/// Notification handler factory
/// Strategy pattern: Her bildirim türü için doğru handler'ı döner
class NotificationHandlerFactory {
  static final Map<NotificationType, INotificationTypeHandler> _handlers = {
    NotificationType.general: GeneralNotificationHandler(),
    NotificationType.chat: ChatNotificationHandler(),
    NotificationType.alert: AlertNotificationHandler(),
    NotificationType.promotion: PromotionNotificationHandler(),
    NotificationType.systemUpdate: SystemUpdateNotificationHandler(),
  };

  /// Bildirim türüne göre handler döner
  static INotificationTypeHandler getHandler(NotificationType type) {
    return _handlers[type] ?? _handlers[NotificationType.general]!;
  }

  /// RemoteMessage'dan bildirim türünü çıkarıp handler döner
  static Future<void> handleNotification(RemoteMessage message) async {
    final typeString = message.data['type'] as String?;
    final type = NotificationType.fromString(typeString);
    final handler = getHandler(type);
    await handler.handle(message);
  }
}
