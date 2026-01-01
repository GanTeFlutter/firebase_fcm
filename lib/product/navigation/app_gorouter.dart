import 'package:fcm_notification_service/future/home/home_view.dart';
import 'package:fcm_notification_service/future/notifications_history/notifications_history_view.dart';
import 'package:fcm_notification_service/product/init/app_listiner_initialize.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  routes: <RouteBase>[
    //ShellRoute hangi screen den itibaren bildirim gosterecekseniz onu shell ile sarmalayin
    //misal splash ve onboard da bildirim gostermeyecekseniz onlari disarda birakin
    ShellRoute(
      builder: (context, state, child) {
        return AppListenerNotification(child: child);
      },
      routes: [
        GoRoute(
          path: '/',
          builder: (BuildContext context, GoRouterState state) {
            return const HomeView();
          },
        ),
        GoRoute(
          path: '/notifications-history',
          builder: (BuildContext context, GoRouterState state) {
            return const NotificationsHistoryView();
          },
        ),
      ],
    ),
  ],
);
