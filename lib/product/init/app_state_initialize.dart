import 'package:fcm_notification_service/product/service/notification/bloc/notification_bloc.dart';
import 'package:fcm_notification_service/product/service/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

final class StateInitialize extends StatelessWidget {
  const StateInitialize({required this.child, super.key});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => NotificationBloc(locator.notificationService)
            ..add(const NotificationEvent.initialize()),
        ),
      ],
      child: child,
    );
  }
}
