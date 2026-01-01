import 'package:fcm_notification_service/product/service/notification/bloc/notification_bloc.dart';
import 'package:fcm_notification_service/product/service/notification/notification_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

final class AppListenerNotification extends StatelessWidget {
  const AppListenerNotification({required this.child, super.key});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return BlocListener<NotificationBloc, NotificationState>(
      listenWhen: (previous, current) => current.maybeWhen(
        notificationReceived: (_, _, _, _) => true,
        error: (_, _) => true,
        orElse: () => false,
      ),
      listener: _onNotificationStateChange,
      child: child,
    );
  }

  void _onNotificationStateChange(
    BuildContext context,
    NotificationState state,
  ) {
    state.maybeWhen(
      notificationReceived: (title, body, data, messages) {
        NotificationHelper.showNotificationSnackBar(
          context,
          title: title,
          body: body,
        );
      },
      error: (message, messages) {
        NotificationHelper.showErrorSnackBar(context, message: message);
      },
      orElse: () {},
    );
  }
}
