import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';

@pragma('vm:entry-point')
Future<void> firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp();

  if (kDebugMode) {
    print('--📨 Background message received: ${message.messageId}');
    print('--Title: ${message.notification?.title}');
    print('--Body: ${message.notification?.body}');
    print('--Data: ${message.data}');
  }
}
