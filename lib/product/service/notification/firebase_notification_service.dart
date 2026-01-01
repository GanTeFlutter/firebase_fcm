import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:fcm_notification_service/product/constants/notification_constants.dart';
import 'package:fcm_notification_service/product/service/notification/handlers/notification_type_handler.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

final class FirebaseNotificationService {
  FirebaseNotificationService._();

  static final FirebaseNotificationService instance =
      FirebaseNotificationService._();

  final FirebaseMessaging _firebaseMessaging = FirebaseMessaging.instance;
  final FlutterLocalNotificationsPlugin _localNotifications =
      FlutterLocalNotificationsPlugin();

  bool _isInitialized = false;
  StreamController<RemoteMessage>? _messageStreamController;
  StreamSubscription<String>? _tokenRefreshSubscription;

  Stream<RemoteMessage> get onMessageReceived {
    _ensureStreamControllerInitialized();
    return _messageStreamController!.stream;
  }

  String? _fcmToken;
  String? get fcmToken => _fcmToken;

  Future<void> initialize() async {
    // Eğer zaten initialize edildiyse, tekrar çalıştırma
    if (_isInitialized) {
      if (kDebugMode) {
        print(
          '-- ⚠️ FirebaseNotificationService already initialized, skipping...',
        );
      }
      return;
    }

    try {
      await _requestPermissions();
      await _initializeLocalNotifications();
      await _getFCMToken();
      _setupTokenRefreshListener(); // KRITIK: Token refresh listener eklendi
      await _subscribeToTopics();
      _setupMessageHandlers();

      _isInitialized = true;
    } catch (e, stackTrace) {
      if (kDebugMode) {
        print('-- ❌ FirebaseNotificationService initialization error: $e');
        print('--Stack trace: $stackTrace');
      }
      // TODO(you): Firebase Crashlytics entegre edin
      // FirebaseCrashlytics.instance.recordError(e, stackTrace, reason: 'FCM Init Error');
      rethrow; // Hatayı üst katmana fırlat
    }
  }

  /// KRITIK: FCM Token yenilendiğinde backend'e bildirmek için listener
  void _setupTokenRefreshListener() {
    _tokenRefreshSubscription = _firebaseMessaging.onTokenRefresh.listen(
      (newToken) {
        _fcmToken = newToken;
        if (kDebugMode) {
          print('-- 🔄 FCM Token refreshed: $newToken');
        }
        // TODO(you): Backend'e yeni token'ı gönderin
        // await yourApiService.updateFcmToken(newToken);
      },
      onError: (Object error) {
        if (kDebugMode) {
          print('-- ❌ FCM Token refresh error: $error');
        }
        // TODO(you): Firebase Crashlytics entegre edin
        // FirebaseCrashlytics.instance.recordError(error, StackTrace.current);
      },
    );
  }

  Future<void> _subscribeToTopics() async {
    try {
      await _firebaseMessaging.subscribeToTopic(
        NotificationConstants.defaultTopic,
      );
      if (kDebugMode) {
        print(
          '-- ✅ Subscribed to topic: ${NotificationConstants.defaultTopic}',
        );
      }
    } on Exception catch (e) {
      if (kDebugMode) {
        print('-- ❌ Error subscribing to topics: $e');
      }
      // TODO(you): Firebase Crashlytics entegre edin
      // FirebaseCrashlytics.instance.recordError(e, StackTrace.current, reason: 'Topic subscription failed');
    }
  }

  Future<void> _requestPermissions() async {
    final settings = await _firebaseMessaging.requestPermission(
      provisional: Platform.isIOS, // iOS için provisional permission
    );

    if (settings.authorizationStatus == AuthorizationStatus.authorized) {
      if (kDebugMode) {
        print('-- ✅ Notification permission granted');
      }
    } else if (settings.authorizationStatus ==
        AuthorizationStatus.provisional) {
      if (kDebugMode) {
        print('-- ⚠️ Provisional notification permission granted');
      }
    } else {
      if (kDebugMode) {
        print('-- ❌ Notification permission denied');
      }
      // TODO(you): İzin reddedildiğinde kullanıcıyı bilgilendir
      // Ayarlara yönlendirme için permission_handler paketi kullanılabilir
    }

    if (Platform.isIOS) {
      await _firebaseMessaging.setForegroundNotificationPresentationOptions(
        alert: true,
        badge: true,
        sound: true,
      );
    }
  }

  Future<void> _initializeLocalNotifications() async {
    const androidSettings = AndroidInitializationSettings(
      '@mipmap/launcher_icon',
    );
    const iosSettings = DarwinInitializationSettings();

    const initSettings = InitializationSettings(
      android: androidSettings,
      iOS: iosSettings,
    );

    await _localNotifications.initialize(
      initSettings,
      onDidReceiveNotificationResponse: _onNotificationTapped,
    );

    if (Platform.isAndroid) {
      const androidChannel = AndroidNotificationChannel(
        NotificationConstants.androidChannelId,
        NotificationConstants.androidChannelName,
        description: NotificationConstants.androidChannelDescription,
        importance: Importance.max,
        enableLights: true,
      );

      await _localNotifications
          .resolvePlatformSpecificImplementation<
            AndroidFlutterLocalNotificationsPlugin
          >()
          ?.createNotificationChannel(androidChannel);
    }
  }

  Future<void> _getFCMToken() async {
    try {
      _fcmToken = await _firebaseMessaging.getToken();
      if (kDebugMode) {
        print('-- 📱 FCM Token: $_fcmToken');
      }
      // TODO(you): Backend'e ilk token'ı gönderin
      // await yourApiService.sendFcmToken(_fcmToken);
    } on Exception catch (e) {
      if (kDebugMode) {
        print('-- ❌ Error getting FCM token: $e');
      }
      // TODO(you): Firebase Crashlytics entegre edin
      // FirebaseCrashlytics.instance.recordError(e, StackTrace.current, reason: 'FCM Token retrieval failed');
    }
  }

  void _setupMessageHandlers() {
    // StreamController'ı başlat
    _ensureStreamControllerInitialized();

    // Foreground mesajları - uygulama açıkken gelen bildirimler
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      if (kDebugMode) {
        print('-- 📨 Foreground message received: ${message.messageId}');
      }
      _ensureStreamControllerInitialized();
      _messageStreamController!.add(message);

      // Notification type handler'ı çalıştır (scalability için)
      NotificationHandlerFactory.handleNotification(message);

      // Uygulama açıkken (Foreground) bildirim sesi ve banner göstermek için:
      final notification = message.notification;
      final android = message.notification?.android;

      if (notification != null && android != null) {
        _localNotifications.show(
          notification.hashCode,
          notification.title,
          notification.body,
          const NotificationDetails(
            android: AndroidNotificationDetails(
              NotificationConstants.androidChannelId,
              NotificationConstants.androidChannelName,
              importance: Importance.max,
              priority: Priority.high,
              icon: '@mipmap/launcher_icon',
              color: Color(0xFF2853AF), // Bildirim ikonu arka plan rengi
            ),
          ),
          payload: jsonEncode(message.data), // JSON encode for safety
        );
      }
    });

    // Background mesajları - uygulama arka planda açıkken tıklanan bildirimler
    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
      if (kDebugMode) {
        print('-- 🔔 Notification tapped (background): ${message.messageId}');
      }
      _ensureStreamControllerInitialized();
      _messageStreamController!.add(message);

      // Notification type handler'ı çalıştır
      NotificationHandlerFactory.handleNotification(message);
    });

    // Terminated mesajları - uygulama tamamen kapalıyken tıklanan bildirimler
    // getInitialMessage ile Bloc tarafında yakalanır.
  }

  /// KRITIK FIX: StreamController memory leak önleme
  void _ensureStreamControllerInitialized() {
    if (_messageStreamController == null ||
        _messageStreamController!.isClosed) {
      // Eski controller'ı kapat (varsa)
      _messageStreamController?.close();
      _messageStreamController = StreamController<RemoteMessage>.broadcast();
    }
  }

  Future<RemoteMessage?> getInitialMessage() async {
    // Terminated durumu için Bloc tarafında kullanılıyor
    return _firebaseMessaging.getInitialMessage();
  }

  void _onNotificationTapped(NotificationResponse response) {
    if (kDebugMode) {
      print('-- 🔔 Local notification tapped: ${response.payload}');
    }
  }

  /// KRITIK: Memory leak önlemek için dispose
  /// Not: Singleton olduğu için otomatik dispose edilmez
  /// Uygulama kapanırken veya logout'ta manuel çağrılmalı
  void dispose() {
    _tokenRefreshSubscription?.cancel();
    _tokenRefreshSubscription = null;
    _messageStreamController?.close();
    _messageStreamController = null;
    _isInitialized = false;
    if (kDebugMode) {
      print('-- 🧹 FirebaseNotificationService disposed');
    }
  }
}
