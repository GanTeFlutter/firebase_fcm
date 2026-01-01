/// Notification service için sabit değerler
abstract final class NotificationConstants {
  // Storage ve limit değerleri
  static const int maxStoredNotifications = 10;

  // Android Notification Channel
  static const String androidChannelId = 'fcm_high_importance_channel';
  static const String androidChannelName = 'High Importance Notifications';
  static const String androidChannelDescription =
      'This channel is used for important notifications.';

  // FCM Topics
  static const String defaultTopic = 'all_users';

  // Notification defaults
  static const String defaultNotificationTitle = 'Bildirim';

  // Auto-close durations
  static const Duration notificationBannerDuration = Duration(seconds: 4);
  static const Duration notificationBannerAnimationDuration =
      Duration(milliseconds: 400);

  // Debounce/Throttle durations
  static const Duration stateSerializationDebounce = Duration(milliseconds: 500);
}
