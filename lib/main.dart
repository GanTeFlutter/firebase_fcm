import 'package:fcm_notification_service/product/init/app_initialize.dart';
import 'package:fcm_notification_service/product/init/app_state_initialize.dart';
import 'package:fcm_notification_service/product/navigation/app_gorouter.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  await AppInitialize().make();
  runApp(const StateInitialize(child: _MyApp()));
}

class _MyApp extends StatelessWidget {
  const _MyApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'fcm',
      routerConfig: router,
    );
  }
}
