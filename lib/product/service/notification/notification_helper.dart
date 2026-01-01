import 'dart:async';

import 'package:fcm_notification_service/product/constants/notification_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

@immutable
final class NotificationHelper {
  const NotificationHelper._();

  static OverlayEntry? _activeEntry;

  static void showNotificationSnackBar(
    BuildContext context, {
    required String title,
    required String body,
  }) => _show(context, title: title, body: body, isError: false);

  static void showErrorSnackBar(
    BuildContext context, {
    required String message,
  }) => _show(context, title: 'Hata', body: message, isError: true);

  static void _show(
    BuildContext context, {
    required String title,
    required String body,
    required bool isError,
  }) {
    if (isError) {
      HapticFeedback.mediumImpact();
    }

    _activeEntry?.remove();
    _activeEntry = null;

    final overlay = Overlay.maybeOf(context);
    if (overlay == null) return;

    late OverlayEntry entry;

    entry = OverlayEntry(
      builder: (ctx) => Positioned(
        top: MediaQuery.of(ctx).padding.top + 16,
        left: 0,
        right: 0,
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 450),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: _Banner(
                title: title,
                body: body,
                isError: isError,
                onClose: () {
                  if (entry.mounted) entry.remove();
                  if (_activeEntry == entry) _activeEntry = null;
                },
              ),
            ),
          ),
        ),
      ),
    );

    _activeEntry = entry;
    overlay.insert(entry);
  }
}

class _Banner extends StatefulWidget {
  const _Banner({
    required this.title,
    required this.body,
    required this.onClose,
    required this.isError,
  });

  final String title;
  final String body;
  final bool isError;
  final VoidCallback onClose;

  @override
  State<_Banner> createState() => _BannerState();
}

class _BannerState extends State<_Banner> with SingleTickerProviderStateMixin {
  late final AnimationController _ctrl;
  Timer? _autoCloseTimer;

  @override
  void initState() {
    super.initState();
    _ctrl = AnimationController(
      duration: NotificationConstants.notificationBannerAnimationDuration,
      vsync: this,
    )..forward();

    _autoCloseTimer = Timer(
      NotificationConstants.notificationBannerDuration,
      _dismiss,
    );
  }

  @override
  void dispose() {
    _autoCloseTimer?.cancel();
    _ctrl.dispose();
    super.dispose();
  }

  Future<void> _dismiss() async {
    if (!mounted) return;
    _autoCloseTimer?.cancel();
    try {
      await _ctrl.reverse();
    } on Exception catch (_) {
    } finally {
      widget.onClose();
    }
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position:
          Tween<Offset>(
            begin: const Offset(0, -1),
            end: Offset.zero,
          ).animate(
            CurvedAnimation(
              parent: _ctrl,
              curve: Curves.easeOutBack,
              reverseCurve: Curves.easeIn,
            ),
          ),
      child: GestureDetector(
        onVerticalDragEnd: (d) {
          if (d.primaryVelocity! < -500) _dismiss();
        },
        child: Material(
          color: Colors.transparent,
          child: Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: widget.isError
                  ? Colors.red.shade700
                  : const Color(0xFF2853AF),
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  blurRadius: 12,
                  offset: const Offset(0, 6),
                ),
              ],
            ),
            child: Row(
              children: [
                Icon(
                  widget.isError
                      ? Icons.error_outline
                      : Icons.check_circle_outline,
                  color: Colors.white,
                  size: 28,
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.title,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        widget.body,
                        style: const TextStyle(
                          fontSize: 14,
                          color: Colors.white70,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
                IconButton(
                  icon: const Icon(
                    Icons.close,
                    color: Colors.white70,
                    size: 20,
                  ),
                  onPressed: _dismiss,
                  padding: EdgeInsets.zero,
                  constraints: const BoxConstraints(),
                  visualDensity: VisualDensity.compact,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
