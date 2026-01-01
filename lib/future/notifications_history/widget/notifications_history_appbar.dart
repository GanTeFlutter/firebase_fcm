part of '../notifications_history_view.dart';

final class _NotificationsHistoryAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const _NotificationsHistoryAppBar();

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text(
        'Bildirim Geçmişi',
        style: TextStyle(
          fontWeight: FontWeight.w600,
          letterSpacing: -0.5,
        ),
      ),
      centerTitle: true,
      elevation: 0,
      surfaceTintColor: Colors.transparent,
      backgroundColor: Theme.of(context).colorScheme.surface,
      actions: const [
        _DeleteAllButton(),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

final class _DeleteAllButton extends StatelessWidget {
  const _DeleteAllButton();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotificationBloc, NotificationState>(
      // PERFORMANCE: Sadece messages.length değiştiğinde rebuild
      buildWhen: (previous, current) =>
          previous.messages.length != current.messages.length,
      builder: (context, state) {
        // DRY: Extension method kullanımı
        final messages = state.messages;

        if (messages.isEmpty) return const SizedBox.shrink();

        return IconButton(
          icon: const Icon(Icons.delete_forever),
          tooltip: 'Tümünü Sil',
          style: IconButton.styleFrom(
            foregroundColor: Theme.of(context).colorScheme.error,
          ),
          onPressed: () {
            showDialog<void>(
              context: context,
              builder: (dialogContext) => AlertDialog(
                icon: Icon(
                  Icons.warning_rounded,
                  color: Theme.of(dialogContext).colorScheme.error,
                  size: 32,
                ),
                title: const Text(
                  'Tüm Bildirimleri Sil',
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                content: const Text(
                  'Tüm bildirim geçmişini silmek istediğinizden emin misiniz?',
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                actions: [
                  TextButton(
                    onPressed: () => Navigator.pop(dialogContext),
                    style: TextButton.styleFrom(
                      foregroundColor: Theme.of(
                        dialogContext,
                      ).colorScheme.onSurfaceVariant,
                    ),
                    child: const Text('İptal'),
                  ),
                  FilledButton(
                    onPressed: () {
                      context.read<NotificationBloc>().add(
                        const NotificationEvent.clearAllNotifications(),
                      );
                      Navigator.pop(dialogContext);
                    },
                    style: FilledButton.styleFrom(
                      backgroundColor: Theme.of(
                        dialogContext,
                      ).colorScheme.error,
                      foregroundColor: Theme.of(
                        dialogContext,
                      ).colorScheme.onError,
                    ),
                    child: const Text('Sil'),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }
}
