import 'dart:async';

import 'package:fcm_notification_service/product/init/background_notification_handler.dart';
import 'package:fcm_notification_service/product/service/firebase/firebase_options.dart';
import 'package:fcm_notification_service/product/service/service_locator.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';

@immutable
final class AppInitialize {
  Future<void> make() async {
    WidgetsFlutterBinding.ensureInitialized();
    await runZonedGuarded(
      _initialize,
      (error, stack) {
        if (kDebugMode) {
          print('-- ⚠️ Uncaught error in app initialization: $error');
          print('-- Stack trace: $stack');
        }
      },
    );
  }

  Future<void> _initialize() async {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );

    final directory = await getApplicationDocumentsDirectory();
    HydratedBloc.storage = await HydratedStorage.build(
      storageDirectory: HydratedStorageDirectory(directory.path),
    );

    FirebaseMessaging.onBackgroundMessage(
      firebaseMessagingBackgroundHandler,
    );

    await setupLocator();
  }
}
