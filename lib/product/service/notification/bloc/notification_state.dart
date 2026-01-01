part of 'notification_bloc.dart';

@freezed
class NotificationState with _$NotificationState {
  const factory NotificationState.initial({
    @Default([]) List<NotificationModel> messages,
  }) = _Initial;

  const factory NotificationState.loading({
    @Default([]) List<NotificationModel> messages,
  }) = _Loading;

  const factory NotificationState.notificationReceived({
    required String title,
    required String body,
    required Map<String, dynamic> data,
    @Default([]) List<NotificationModel> messages,
  }) = _NotificationReceived;

  const factory NotificationState.messagesUpdated({
    required List<NotificationModel> messages,
  }) = _MessagesUpdated;

  const factory NotificationState.error(
    String message, {
    @Default([]) List<NotificationModel> messages,
  }) = _Error;
}
