part of 'notification_bloc.dart';

@freezed
class NotificationEvent with _$NotificationEvent {
  const factory NotificationEvent.initialize() = _Initialize;

  const factory NotificationEvent.incomingMessage(RemoteMessage message) =
      _IncomingMessage;

  const factory NotificationEvent.deleteNotification(String id) =
      _DeleteNotification;

  const factory NotificationEvent.clearAllNotifications() =
      _ClearAllNotifications;

  const factory NotificationEvent.markAsRead(String id) = _MarkAsRead;
}
