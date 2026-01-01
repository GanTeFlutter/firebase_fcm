import 'package:fcm_notification_service/product/service/notification/firebase_notification_service.dart';
import 'package:get_it/get_it.dart';

final GetIt locator = GetIt.instance;

Future<void> setupLocator() async {
  _registerSingletons();
  await _initializeServices();
}

Future<void> _initializeServices() async {
  await locator<FirebaseNotificationService>().initialize();
}

void _registerSingletons() {
  locator.registerLazySingleton<FirebaseNotificationService>(
    () => FirebaseNotificationService.instance,
  );
}

extension ServiceLocator on GetIt {
  FirebaseNotificationService get notificationService =>
      locator<FirebaseNotificationService>();
}
