import 'package:fcm_notification_service/product/service/notification/bloc/notification_bloc.dart';
import 'package:fcm_notification_service/product/service/notification/model/notification_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'widget/notifications_history_appbar.dart';
part 'widget/notifications_history_item.dart';

class NotificationsHistoryView extends StatelessWidget {
  const NotificationsHistoryView({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: const _NotificationsHistoryAppBar(),
      backgroundColor: colorScheme.surfaceContainerLowest,
      body: BlocBuilder<NotificationBloc, NotificationState>(
        builder: (context, state) {
          return state.maybeWhen(
            loading: (messages) => Center(
              child: CircularProgressIndicator(
                color: colorScheme.primary,
              ),
            ),
            orElse: () {
              final messages = state.messages;

              if (messages.isEmpty) {
                return Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(24),
                        decoration: BoxDecoration(
                          color: colorScheme.primaryContainer.withOpacity(0.3),
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.notifications_off_rounded,
                          size: 64,
                          color: colorScheme.onSurfaceVariant,
                        ),
                      ),
                      const SizedBox(height: 24),
                      Text(
                        'Henüz bildirim yok',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: colorScheme.onSurface,
                          letterSpacing: -0.5,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'Bildirimler geldiğinde burada görünecek',
                        style: TextStyle(
                          fontSize: 14,
                          color: colorScheme.onSurfaceVariant,
                        ),
                      ),
                    ],
                  ),
                );
              }

              return ListView.separated(
                padding: const EdgeInsets.all(16),
                itemCount: messages.length,
                separatorBuilder: (_, _) => const SizedBox(height: 12),
                itemBuilder: (context, index) {
                  final notification = messages[index];
                  return _NotificationHistoryItem(
                    notification: notification,
                    onDelete: () {
                      context.read<NotificationBloc>().add(
                        NotificationEvent.deleteNotification(notification.id),
                      );
                    },
                    onTap: () {
                      if (!notification.isRead) {
                        context.read<NotificationBloc>().add(
                          NotificationEvent.markAsRead(notification.id),
                        );
                      }
                    },
                  );
                },
              );
            },
          );
        },
      ),
    );
  }
}
