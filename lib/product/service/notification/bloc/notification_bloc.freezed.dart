// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$NotificationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(RemoteMessage message) incomingMessage,
    required TResult Function(String id) deleteNotification,
    required TResult Function() clearAllNotifications,
    required TResult Function(String id) markAsRead,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(RemoteMessage message)? incomingMessage,
    TResult? Function(String id)? deleteNotification,
    TResult? Function()? clearAllNotifications,
    TResult? Function(String id)? markAsRead,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(RemoteMessage message)? incomingMessage,
    TResult Function(String id)? deleteNotification,
    TResult Function()? clearAllNotifications,
    TResult Function(String id)? markAsRead,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_IncomingMessage value) incomingMessage,
    required TResult Function(_DeleteNotification value) deleteNotification,
    required TResult Function(_ClearAllNotifications value)
    clearAllNotifications,
    required TResult Function(_MarkAsRead value) markAsRead,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_IncomingMessage value)? incomingMessage,
    TResult? Function(_DeleteNotification value)? deleteNotification,
    TResult? Function(_ClearAllNotifications value)? clearAllNotifications,
    TResult? Function(_MarkAsRead value)? markAsRead,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_IncomingMessage value)? incomingMessage,
    TResult Function(_DeleteNotification value)? deleteNotification,
    TResult Function(_ClearAllNotifications value)? clearAllNotifications,
    TResult Function(_MarkAsRead value)? markAsRead,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationEventCopyWith<$Res> {
  factory $NotificationEventCopyWith(
    NotificationEvent value,
    $Res Function(NotificationEvent) then,
  ) = _$NotificationEventCopyWithImpl<$Res, NotificationEvent>;
}

/// @nodoc
class _$NotificationEventCopyWithImpl<$Res, $Val extends NotificationEvent>
    implements $NotificationEventCopyWith<$Res> {
  _$NotificationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NotificationEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitializeImplCopyWith<$Res> {
  factory _$$InitializeImplCopyWith(
    _$InitializeImpl value,
    $Res Function(_$InitializeImpl) then,
  ) = __$$InitializeImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitializeImplCopyWithImpl<$Res>
    extends _$NotificationEventCopyWithImpl<$Res, _$InitializeImpl>
    implements _$$InitializeImplCopyWith<$Res> {
  __$$InitializeImplCopyWithImpl(
    _$InitializeImpl _value,
    $Res Function(_$InitializeImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of NotificationEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitializeImpl implements _Initialize {
  const _$InitializeImpl();

  @override
  String toString() {
    return 'NotificationEvent.initialize()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitializeImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(RemoteMessage message) incomingMessage,
    required TResult Function(String id) deleteNotification,
    required TResult Function() clearAllNotifications,
    required TResult Function(String id) markAsRead,
  }) {
    return initialize();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(RemoteMessage message)? incomingMessage,
    TResult? Function(String id)? deleteNotification,
    TResult? Function()? clearAllNotifications,
    TResult? Function(String id)? markAsRead,
  }) {
    return initialize?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(RemoteMessage message)? incomingMessage,
    TResult Function(String id)? deleteNotification,
    TResult Function()? clearAllNotifications,
    TResult Function(String id)? markAsRead,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_IncomingMessage value) incomingMessage,
    required TResult Function(_DeleteNotification value) deleteNotification,
    required TResult Function(_ClearAllNotifications value)
    clearAllNotifications,
    required TResult Function(_MarkAsRead value) markAsRead,
  }) {
    return initialize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_IncomingMessage value)? incomingMessage,
    TResult? Function(_DeleteNotification value)? deleteNotification,
    TResult? Function(_ClearAllNotifications value)? clearAllNotifications,
    TResult? Function(_MarkAsRead value)? markAsRead,
  }) {
    return initialize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_IncomingMessage value)? incomingMessage,
    TResult Function(_DeleteNotification value)? deleteNotification,
    TResult Function(_ClearAllNotifications value)? clearAllNotifications,
    TResult Function(_MarkAsRead value)? markAsRead,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize(this);
    }
    return orElse();
  }
}

abstract class _Initialize implements NotificationEvent {
  const factory _Initialize() = _$InitializeImpl;
}

/// @nodoc
abstract class _$$IncomingMessageImplCopyWith<$Res> {
  factory _$$IncomingMessageImplCopyWith(
    _$IncomingMessageImpl value,
    $Res Function(_$IncomingMessageImpl) then,
  ) = __$$IncomingMessageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({RemoteMessage message});
}

/// @nodoc
class __$$IncomingMessageImplCopyWithImpl<$Res>
    extends _$NotificationEventCopyWithImpl<$Res, _$IncomingMessageImpl>
    implements _$$IncomingMessageImplCopyWith<$Res> {
  __$$IncomingMessageImplCopyWithImpl(
    _$IncomingMessageImpl _value,
    $Res Function(_$IncomingMessageImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of NotificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _$IncomingMessageImpl(
        null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as RemoteMessage,
      ),
    );
  }
}

/// @nodoc

class _$IncomingMessageImpl implements _IncomingMessage {
  const _$IncomingMessageImpl(this.message);

  @override
  final RemoteMessage message;

  @override
  String toString() {
    return 'NotificationEvent.incomingMessage(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IncomingMessageImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of NotificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$IncomingMessageImplCopyWith<_$IncomingMessageImpl> get copyWith =>
      __$$IncomingMessageImplCopyWithImpl<_$IncomingMessageImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(RemoteMessage message) incomingMessage,
    required TResult Function(String id) deleteNotification,
    required TResult Function() clearAllNotifications,
    required TResult Function(String id) markAsRead,
  }) {
    return incomingMessage(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(RemoteMessage message)? incomingMessage,
    TResult? Function(String id)? deleteNotification,
    TResult? Function()? clearAllNotifications,
    TResult? Function(String id)? markAsRead,
  }) {
    return incomingMessage?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(RemoteMessage message)? incomingMessage,
    TResult Function(String id)? deleteNotification,
    TResult Function()? clearAllNotifications,
    TResult Function(String id)? markAsRead,
    required TResult orElse(),
  }) {
    if (incomingMessage != null) {
      return incomingMessage(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_IncomingMessage value) incomingMessage,
    required TResult Function(_DeleteNotification value) deleteNotification,
    required TResult Function(_ClearAllNotifications value)
    clearAllNotifications,
    required TResult Function(_MarkAsRead value) markAsRead,
  }) {
    return incomingMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_IncomingMessage value)? incomingMessage,
    TResult? Function(_DeleteNotification value)? deleteNotification,
    TResult? Function(_ClearAllNotifications value)? clearAllNotifications,
    TResult? Function(_MarkAsRead value)? markAsRead,
  }) {
    return incomingMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_IncomingMessage value)? incomingMessage,
    TResult Function(_DeleteNotification value)? deleteNotification,
    TResult Function(_ClearAllNotifications value)? clearAllNotifications,
    TResult Function(_MarkAsRead value)? markAsRead,
    required TResult orElse(),
  }) {
    if (incomingMessage != null) {
      return incomingMessage(this);
    }
    return orElse();
  }
}

abstract class _IncomingMessage implements NotificationEvent {
  const factory _IncomingMessage(final RemoteMessage message) =
      _$IncomingMessageImpl;

  RemoteMessage get message;

  /// Create a copy of NotificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$IncomingMessageImplCopyWith<_$IncomingMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteNotificationImplCopyWith<$Res> {
  factory _$$DeleteNotificationImplCopyWith(
    _$DeleteNotificationImpl value,
    $Res Function(_$DeleteNotificationImpl) then,
  ) = __$$DeleteNotificationImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$DeleteNotificationImplCopyWithImpl<$Res>
    extends _$NotificationEventCopyWithImpl<$Res, _$DeleteNotificationImpl>
    implements _$$DeleteNotificationImplCopyWith<$Res> {
  __$$DeleteNotificationImplCopyWithImpl(
    _$DeleteNotificationImpl _value,
    $Res Function(_$DeleteNotificationImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of NotificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null}) {
    return _then(
      _$DeleteNotificationImpl(
        null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$DeleteNotificationImpl implements _DeleteNotification {
  const _$DeleteNotificationImpl(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'NotificationEvent.deleteNotification(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteNotificationImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of NotificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteNotificationImplCopyWith<_$DeleteNotificationImpl> get copyWith =>
      __$$DeleteNotificationImplCopyWithImpl<_$DeleteNotificationImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(RemoteMessage message) incomingMessage,
    required TResult Function(String id) deleteNotification,
    required TResult Function() clearAllNotifications,
    required TResult Function(String id) markAsRead,
  }) {
    return deleteNotification(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(RemoteMessage message)? incomingMessage,
    TResult? Function(String id)? deleteNotification,
    TResult? Function()? clearAllNotifications,
    TResult? Function(String id)? markAsRead,
  }) {
    return deleteNotification?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(RemoteMessage message)? incomingMessage,
    TResult Function(String id)? deleteNotification,
    TResult Function()? clearAllNotifications,
    TResult Function(String id)? markAsRead,
    required TResult orElse(),
  }) {
    if (deleteNotification != null) {
      return deleteNotification(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_IncomingMessage value) incomingMessage,
    required TResult Function(_DeleteNotification value) deleteNotification,
    required TResult Function(_ClearAllNotifications value)
    clearAllNotifications,
    required TResult Function(_MarkAsRead value) markAsRead,
  }) {
    return deleteNotification(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_IncomingMessage value)? incomingMessage,
    TResult? Function(_DeleteNotification value)? deleteNotification,
    TResult? Function(_ClearAllNotifications value)? clearAllNotifications,
    TResult? Function(_MarkAsRead value)? markAsRead,
  }) {
    return deleteNotification?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_IncomingMessage value)? incomingMessage,
    TResult Function(_DeleteNotification value)? deleteNotification,
    TResult Function(_ClearAllNotifications value)? clearAllNotifications,
    TResult Function(_MarkAsRead value)? markAsRead,
    required TResult orElse(),
  }) {
    if (deleteNotification != null) {
      return deleteNotification(this);
    }
    return orElse();
  }
}

abstract class _DeleteNotification implements NotificationEvent {
  const factory _DeleteNotification(final String id) = _$DeleteNotificationImpl;

  String get id;

  /// Create a copy of NotificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteNotificationImplCopyWith<_$DeleteNotificationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearAllNotificationsImplCopyWith<$Res> {
  factory _$$ClearAllNotificationsImplCopyWith(
    _$ClearAllNotificationsImpl value,
    $Res Function(_$ClearAllNotificationsImpl) then,
  ) = __$$ClearAllNotificationsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearAllNotificationsImplCopyWithImpl<$Res>
    extends _$NotificationEventCopyWithImpl<$Res, _$ClearAllNotificationsImpl>
    implements _$$ClearAllNotificationsImplCopyWith<$Res> {
  __$$ClearAllNotificationsImplCopyWithImpl(
    _$ClearAllNotificationsImpl _value,
    $Res Function(_$ClearAllNotificationsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of NotificationEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ClearAllNotificationsImpl implements _ClearAllNotifications {
  const _$ClearAllNotificationsImpl();

  @override
  String toString() {
    return 'NotificationEvent.clearAllNotifications()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClearAllNotificationsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(RemoteMessage message) incomingMessage,
    required TResult Function(String id) deleteNotification,
    required TResult Function() clearAllNotifications,
    required TResult Function(String id) markAsRead,
  }) {
    return clearAllNotifications();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(RemoteMessage message)? incomingMessage,
    TResult? Function(String id)? deleteNotification,
    TResult? Function()? clearAllNotifications,
    TResult? Function(String id)? markAsRead,
  }) {
    return clearAllNotifications?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(RemoteMessage message)? incomingMessage,
    TResult Function(String id)? deleteNotification,
    TResult Function()? clearAllNotifications,
    TResult Function(String id)? markAsRead,
    required TResult orElse(),
  }) {
    if (clearAllNotifications != null) {
      return clearAllNotifications();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_IncomingMessage value) incomingMessage,
    required TResult Function(_DeleteNotification value) deleteNotification,
    required TResult Function(_ClearAllNotifications value)
    clearAllNotifications,
    required TResult Function(_MarkAsRead value) markAsRead,
  }) {
    return clearAllNotifications(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_IncomingMessage value)? incomingMessage,
    TResult? Function(_DeleteNotification value)? deleteNotification,
    TResult? Function(_ClearAllNotifications value)? clearAllNotifications,
    TResult? Function(_MarkAsRead value)? markAsRead,
  }) {
    return clearAllNotifications?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_IncomingMessage value)? incomingMessage,
    TResult Function(_DeleteNotification value)? deleteNotification,
    TResult Function(_ClearAllNotifications value)? clearAllNotifications,
    TResult Function(_MarkAsRead value)? markAsRead,
    required TResult orElse(),
  }) {
    if (clearAllNotifications != null) {
      return clearAllNotifications(this);
    }
    return orElse();
  }
}

abstract class _ClearAllNotifications implements NotificationEvent {
  const factory _ClearAllNotifications() = _$ClearAllNotificationsImpl;
}

/// @nodoc
abstract class _$$MarkAsReadImplCopyWith<$Res> {
  factory _$$MarkAsReadImplCopyWith(
    _$MarkAsReadImpl value,
    $Res Function(_$MarkAsReadImpl) then,
  ) = __$$MarkAsReadImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$MarkAsReadImplCopyWithImpl<$Res>
    extends _$NotificationEventCopyWithImpl<$Res, _$MarkAsReadImpl>
    implements _$$MarkAsReadImplCopyWith<$Res> {
  __$$MarkAsReadImplCopyWithImpl(
    _$MarkAsReadImpl _value,
    $Res Function(_$MarkAsReadImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of NotificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null}) {
    return _then(
      _$MarkAsReadImpl(
        null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$MarkAsReadImpl implements _MarkAsRead {
  const _$MarkAsReadImpl(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'NotificationEvent.markAsRead(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MarkAsReadImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of NotificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MarkAsReadImplCopyWith<_$MarkAsReadImpl> get copyWith =>
      __$$MarkAsReadImplCopyWithImpl<_$MarkAsReadImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(RemoteMessage message) incomingMessage,
    required TResult Function(String id) deleteNotification,
    required TResult Function() clearAllNotifications,
    required TResult Function(String id) markAsRead,
  }) {
    return markAsRead(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(RemoteMessage message)? incomingMessage,
    TResult? Function(String id)? deleteNotification,
    TResult? Function()? clearAllNotifications,
    TResult? Function(String id)? markAsRead,
  }) {
    return markAsRead?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(RemoteMessage message)? incomingMessage,
    TResult Function(String id)? deleteNotification,
    TResult Function()? clearAllNotifications,
    TResult Function(String id)? markAsRead,
    required TResult orElse(),
  }) {
    if (markAsRead != null) {
      return markAsRead(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_IncomingMessage value) incomingMessage,
    required TResult Function(_DeleteNotification value) deleteNotification,
    required TResult Function(_ClearAllNotifications value)
    clearAllNotifications,
    required TResult Function(_MarkAsRead value) markAsRead,
  }) {
    return markAsRead(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_IncomingMessage value)? incomingMessage,
    TResult? Function(_DeleteNotification value)? deleteNotification,
    TResult? Function(_ClearAllNotifications value)? clearAllNotifications,
    TResult? Function(_MarkAsRead value)? markAsRead,
  }) {
    return markAsRead?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_IncomingMessage value)? incomingMessage,
    TResult Function(_DeleteNotification value)? deleteNotification,
    TResult Function(_ClearAllNotifications value)? clearAllNotifications,
    TResult Function(_MarkAsRead value)? markAsRead,
    required TResult orElse(),
  }) {
    if (markAsRead != null) {
      return markAsRead(this);
    }
    return orElse();
  }
}

abstract class _MarkAsRead implements NotificationEvent {
  const factory _MarkAsRead(final String id) = _$MarkAsReadImpl;

  String get id;

  /// Create a copy of NotificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MarkAsReadImplCopyWith<_$MarkAsReadImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$NotificationState {
  List<NotificationModel> get messages => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<NotificationModel> messages) initial,
    required TResult Function(List<NotificationModel> messages) loading,
    required TResult Function(
      String title,
      String body,
      Map<String, dynamic> data,
      List<NotificationModel> messages,
    )
    notificationReceived,
    required TResult Function(List<NotificationModel> messages) messagesUpdated,
    required TResult Function(String message, List<NotificationModel> messages)
    error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<NotificationModel> messages)? initial,
    TResult? Function(List<NotificationModel> messages)? loading,
    TResult? Function(
      String title,
      String body,
      Map<String, dynamic> data,
      List<NotificationModel> messages,
    )?
    notificationReceived,
    TResult? Function(List<NotificationModel> messages)? messagesUpdated,
    TResult? Function(String message, List<NotificationModel> messages)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<NotificationModel> messages)? initial,
    TResult Function(List<NotificationModel> messages)? loading,
    TResult Function(
      String title,
      String body,
      Map<String, dynamic> data,
      List<NotificationModel> messages,
    )?
    notificationReceived,
    TResult Function(List<NotificationModel> messages)? messagesUpdated,
    TResult Function(String message, List<NotificationModel> messages)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_NotificationReceived value) notificationReceived,
    required TResult Function(_MessagesUpdated value) messagesUpdated,
    required TResult Function(_Error value) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_NotificationReceived value)? notificationReceived,
    TResult? Function(_MessagesUpdated value)? messagesUpdated,
    TResult? Function(_Error value)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_NotificationReceived value)? notificationReceived,
    TResult Function(_MessagesUpdated value)? messagesUpdated,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;

  /// Create a copy of NotificationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NotificationStateCopyWith<NotificationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationStateCopyWith<$Res> {
  factory $NotificationStateCopyWith(
    NotificationState value,
    $Res Function(NotificationState) then,
  ) = _$NotificationStateCopyWithImpl<$Res, NotificationState>;
  @useResult
  $Res call({List<NotificationModel> messages});
}

/// @nodoc
class _$NotificationStateCopyWithImpl<$Res, $Val extends NotificationState>
    implements $NotificationStateCopyWith<$Res> {
  _$NotificationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NotificationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? messages = null}) {
    return _then(
      _value.copyWith(
            messages: null == messages
                ? _value.messages
                : messages // ignore: cast_nullable_to_non_nullable
                      as List<NotificationModel>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $NotificationStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
    _$InitialImpl value,
    $Res Function(_$InitialImpl) then,
  ) = __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<NotificationModel> messages});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$NotificationStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
    _$InitialImpl _value,
    $Res Function(_$InitialImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of NotificationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? messages = null}) {
    return _then(
      _$InitialImpl(
        messages: null == messages
            ? _value._messages
            : messages // ignore: cast_nullable_to_non_nullable
                  as List<NotificationModel>,
      ),
    );
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl({final List<NotificationModel> messages = const []})
    : _messages = messages;

  final List<NotificationModel> _messages;
  @override
  @JsonKey()
  List<NotificationModel> get messages {
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  @override
  String toString() {
    return 'NotificationState.initial(messages: $messages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            const DeepCollectionEquality().equals(other._messages, _messages));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_messages));

  /// Create a copy of NotificationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<NotificationModel> messages) initial,
    required TResult Function(List<NotificationModel> messages) loading,
    required TResult Function(
      String title,
      String body,
      Map<String, dynamic> data,
      List<NotificationModel> messages,
    )
    notificationReceived,
    required TResult Function(List<NotificationModel> messages) messagesUpdated,
    required TResult Function(String message, List<NotificationModel> messages)
    error,
  }) {
    return initial(messages);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<NotificationModel> messages)? initial,
    TResult? Function(List<NotificationModel> messages)? loading,
    TResult? Function(
      String title,
      String body,
      Map<String, dynamic> data,
      List<NotificationModel> messages,
    )?
    notificationReceived,
    TResult? Function(List<NotificationModel> messages)? messagesUpdated,
    TResult? Function(String message, List<NotificationModel> messages)? error,
  }) {
    return initial?.call(messages);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<NotificationModel> messages)? initial,
    TResult Function(List<NotificationModel> messages)? loading,
    TResult Function(
      String title,
      String body,
      Map<String, dynamic> data,
      List<NotificationModel> messages,
    )?
    notificationReceived,
    TResult Function(List<NotificationModel> messages)? messagesUpdated,
    TResult Function(String message, List<NotificationModel> messages)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(messages);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_NotificationReceived value) notificationReceived,
    required TResult Function(_MessagesUpdated value) messagesUpdated,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_NotificationReceived value)? notificationReceived,
    TResult? Function(_MessagesUpdated value)? messagesUpdated,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_NotificationReceived value)? notificationReceived,
    TResult Function(_MessagesUpdated value)? messagesUpdated,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements NotificationState {
  const factory _Initial({final List<NotificationModel> messages}) =
      _$InitialImpl;

  @override
  List<NotificationModel> get messages;

  /// Create a copy of NotificationState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res>
    implements $NotificationStateCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
    _$LoadingImpl value,
    $Res Function(_$LoadingImpl) then,
  ) = __$$LoadingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<NotificationModel> messages});
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$NotificationStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
    _$LoadingImpl _value,
    $Res Function(_$LoadingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of NotificationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? messages = null}) {
    return _then(
      _$LoadingImpl(
        messages: null == messages
            ? _value._messages
            : messages // ignore: cast_nullable_to_non_nullable
                  as List<NotificationModel>,
      ),
    );
  }
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl({final List<NotificationModel> messages = const []})
    : _messages = messages;

  final List<NotificationModel> _messages;
  @override
  @JsonKey()
  List<NotificationModel> get messages {
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  @override
  String toString() {
    return 'NotificationState.loading(messages: $messages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingImpl &&
            const DeepCollectionEquality().equals(other._messages, _messages));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_messages));

  /// Create a copy of NotificationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadingImplCopyWith<_$LoadingImpl> get copyWith =>
      __$$LoadingImplCopyWithImpl<_$LoadingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<NotificationModel> messages) initial,
    required TResult Function(List<NotificationModel> messages) loading,
    required TResult Function(
      String title,
      String body,
      Map<String, dynamic> data,
      List<NotificationModel> messages,
    )
    notificationReceived,
    required TResult Function(List<NotificationModel> messages) messagesUpdated,
    required TResult Function(String message, List<NotificationModel> messages)
    error,
  }) {
    return loading(messages);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<NotificationModel> messages)? initial,
    TResult? Function(List<NotificationModel> messages)? loading,
    TResult? Function(
      String title,
      String body,
      Map<String, dynamic> data,
      List<NotificationModel> messages,
    )?
    notificationReceived,
    TResult? Function(List<NotificationModel> messages)? messagesUpdated,
    TResult? Function(String message, List<NotificationModel> messages)? error,
  }) {
    return loading?.call(messages);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<NotificationModel> messages)? initial,
    TResult Function(List<NotificationModel> messages)? loading,
    TResult Function(
      String title,
      String body,
      Map<String, dynamic> data,
      List<NotificationModel> messages,
    )?
    notificationReceived,
    TResult Function(List<NotificationModel> messages)? messagesUpdated,
    TResult Function(String message, List<NotificationModel> messages)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(messages);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_NotificationReceived value) notificationReceived,
    required TResult Function(_MessagesUpdated value) messagesUpdated,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_NotificationReceived value)? notificationReceived,
    TResult? Function(_MessagesUpdated value)? messagesUpdated,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_NotificationReceived value)? notificationReceived,
    TResult Function(_MessagesUpdated value)? messagesUpdated,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements NotificationState {
  const factory _Loading({final List<NotificationModel> messages}) =
      _$LoadingImpl;

  @override
  List<NotificationModel> get messages;

  /// Create a copy of NotificationState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadingImplCopyWith<_$LoadingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NotificationReceivedImplCopyWith<$Res>
    implements $NotificationStateCopyWith<$Res> {
  factory _$$NotificationReceivedImplCopyWith(
    _$NotificationReceivedImpl value,
    $Res Function(_$NotificationReceivedImpl) then,
  ) = __$$NotificationReceivedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String title,
    String body,
    Map<String, dynamic> data,
    List<NotificationModel> messages,
  });
}

/// @nodoc
class __$$NotificationReceivedImplCopyWithImpl<$Res>
    extends _$NotificationStateCopyWithImpl<$Res, _$NotificationReceivedImpl>
    implements _$$NotificationReceivedImplCopyWith<$Res> {
  __$$NotificationReceivedImplCopyWithImpl(
    _$NotificationReceivedImpl _value,
    $Res Function(_$NotificationReceivedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of NotificationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? body = null,
    Object? data = null,
    Object? messages = null,
  }) {
    return _then(
      _$NotificationReceivedImpl(
        title: null == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String,
        body: null == body
            ? _value.body
            : body // ignore: cast_nullable_to_non_nullable
                  as String,
        data: null == data
            ? _value._data
            : data // ignore: cast_nullable_to_non_nullable
                  as Map<String, dynamic>,
        messages: null == messages
            ? _value._messages
            : messages // ignore: cast_nullable_to_non_nullable
                  as List<NotificationModel>,
      ),
    );
  }
}

/// @nodoc

class _$NotificationReceivedImpl implements _NotificationReceived {
  const _$NotificationReceivedImpl({
    required this.title,
    required this.body,
    required final Map<String, dynamic> data,
    final List<NotificationModel> messages = const [],
  }) : _data = data,
       _messages = messages;

  @override
  final String title;
  @override
  final String body;
  final Map<String, dynamic> _data;
  @override
  Map<String, dynamic> get data {
    if (_data is EqualUnmodifiableMapView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_data);
  }

  final List<NotificationModel> _messages;
  @override
  @JsonKey()
  List<NotificationModel> get messages {
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  @override
  String toString() {
    return 'NotificationState.notificationReceived(title: $title, body: $body, data: $data, messages: $messages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationReceivedImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.body, body) || other.body == body) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            const DeepCollectionEquality().equals(other._messages, _messages));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    title,
    body,
    const DeepCollectionEquality().hash(_data),
    const DeepCollectionEquality().hash(_messages),
  );

  /// Create a copy of NotificationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationReceivedImplCopyWith<_$NotificationReceivedImpl>
  get copyWith =>
      __$$NotificationReceivedImplCopyWithImpl<_$NotificationReceivedImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<NotificationModel> messages) initial,
    required TResult Function(List<NotificationModel> messages) loading,
    required TResult Function(
      String title,
      String body,
      Map<String, dynamic> data,
      List<NotificationModel> messages,
    )
    notificationReceived,
    required TResult Function(List<NotificationModel> messages) messagesUpdated,
    required TResult Function(String message, List<NotificationModel> messages)
    error,
  }) {
    return notificationReceived(title, body, data, messages);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<NotificationModel> messages)? initial,
    TResult? Function(List<NotificationModel> messages)? loading,
    TResult? Function(
      String title,
      String body,
      Map<String, dynamic> data,
      List<NotificationModel> messages,
    )?
    notificationReceived,
    TResult? Function(List<NotificationModel> messages)? messagesUpdated,
    TResult? Function(String message, List<NotificationModel> messages)? error,
  }) {
    return notificationReceived?.call(title, body, data, messages);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<NotificationModel> messages)? initial,
    TResult Function(List<NotificationModel> messages)? loading,
    TResult Function(
      String title,
      String body,
      Map<String, dynamic> data,
      List<NotificationModel> messages,
    )?
    notificationReceived,
    TResult Function(List<NotificationModel> messages)? messagesUpdated,
    TResult Function(String message, List<NotificationModel> messages)? error,
    required TResult orElse(),
  }) {
    if (notificationReceived != null) {
      return notificationReceived(title, body, data, messages);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_NotificationReceived value) notificationReceived,
    required TResult Function(_MessagesUpdated value) messagesUpdated,
    required TResult Function(_Error value) error,
  }) {
    return notificationReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_NotificationReceived value)? notificationReceived,
    TResult? Function(_MessagesUpdated value)? messagesUpdated,
    TResult? Function(_Error value)? error,
  }) {
    return notificationReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_NotificationReceived value)? notificationReceived,
    TResult Function(_MessagesUpdated value)? messagesUpdated,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (notificationReceived != null) {
      return notificationReceived(this);
    }
    return orElse();
  }
}

abstract class _NotificationReceived implements NotificationState {
  const factory _NotificationReceived({
    required final String title,
    required final String body,
    required final Map<String, dynamic> data,
    final List<NotificationModel> messages,
  }) = _$NotificationReceivedImpl;

  String get title;
  String get body;
  Map<String, dynamic> get data;
  @override
  List<NotificationModel> get messages;

  /// Create a copy of NotificationState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotificationReceivedImplCopyWith<_$NotificationReceivedImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MessagesUpdatedImplCopyWith<$Res>
    implements $NotificationStateCopyWith<$Res> {
  factory _$$MessagesUpdatedImplCopyWith(
    _$MessagesUpdatedImpl value,
    $Res Function(_$MessagesUpdatedImpl) then,
  ) = __$$MessagesUpdatedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<NotificationModel> messages});
}

/// @nodoc
class __$$MessagesUpdatedImplCopyWithImpl<$Res>
    extends _$NotificationStateCopyWithImpl<$Res, _$MessagesUpdatedImpl>
    implements _$$MessagesUpdatedImplCopyWith<$Res> {
  __$$MessagesUpdatedImplCopyWithImpl(
    _$MessagesUpdatedImpl _value,
    $Res Function(_$MessagesUpdatedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of NotificationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? messages = null}) {
    return _then(
      _$MessagesUpdatedImpl(
        messages: null == messages
            ? _value._messages
            : messages // ignore: cast_nullable_to_non_nullable
                  as List<NotificationModel>,
      ),
    );
  }
}

/// @nodoc

class _$MessagesUpdatedImpl implements _MessagesUpdated {
  const _$MessagesUpdatedImpl({required final List<NotificationModel> messages})
    : _messages = messages;

  final List<NotificationModel> _messages;
  @override
  List<NotificationModel> get messages {
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  @override
  String toString() {
    return 'NotificationState.messagesUpdated(messages: $messages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessagesUpdatedImpl &&
            const DeepCollectionEquality().equals(other._messages, _messages));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_messages));

  /// Create a copy of NotificationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MessagesUpdatedImplCopyWith<_$MessagesUpdatedImpl> get copyWith =>
      __$$MessagesUpdatedImplCopyWithImpl<_$MessagesUpdatedImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<NotificationModel> messages) initial,
    required TResult Function(List<NotificationModel> messages) loading,
    required TResult Function(
      String title,
      String body,
      Map<String, dynamic> data,
      List<NotificationModel> messages,
    )
    notificationReceived,
    required TResult Function(List<NotificationModel> messages) messagesUpdated,
    required TResult Function(String message, List<NotificationModel> messages)
    error,
  }) {
    return messagesUpdated(messages);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<NotificationModel> messages)? initial,
    TResult? Function(List<NotificationModel> messages)? loading,
    TResult? Function(
      String title,
      String body,
      Map<String, dynamic> data,
      List<NotificationModel> messages,
    )?
    notificationReceived,
    TResult? Function(List<NotificationModel> messages)? messagesUpdated,
    TResult? Function(String message, List<NotificationModel> messages)? error,
  }) {
    return messagesUpdated?.call(messages);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<NotificationModel> messages)? initial,
    TResult Function(List<NotificationModel> messages)? loading,
    TResult Function(
      String title,
      String body,
      Map<String, dynamic> data,
      List<NotificationModel> messages,
    )?
    notificationReceived,
    TResult Function(List<NotificationModel> messages)? messagesUpdated,
    TResult Function(String message, List<NotificationModel> messages)? error,
    required TResult orElse(),
  }) {
    if (messagesUpdated != null) {
      return messagesUpdated(messages);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_NotificationReceived value) notificationReceived,
    required TResult Function(_MessagesUpdated value) messagesUpdated,
    required TResult Function(_Error value) error,
  }) {
    return messagesUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_NotificationReceived value)? notificationReceived,
    TResult? Function(_MessagesUpdated value)? messagesUpdated,
    TResult? Function(_Error value)? error,
  }) {
    return messagesUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_NotificationReceived value)? notificationReceived,
    TResult Function(_MessagesUpdated value)? messagesUpdated,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (messagesUpdated != null) {
      return messagesUpdated(this);
    }
    return orElse();
  }
}

abstract class _MessagesUpdated implements NotificationState {
  const factory _MessagesUpdated({
    required final List<NotificationModel> messages,
  }) = _$MessagesUpdatedImpl;

  @override
  List<NotificationModel> get messages;

  /// Create a copy of NotificationState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MessagesUpdatedImplCopyWith<_$MessagesUpdatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res>
    implements $NotificationStateCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
    _$ErrorImpl value,
    $Res Function(_$ErrorImpl) then,
  ) = __$$ErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, List<NotificationModel> messages});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$NotificationStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
    _$ErrorImpl _value,
    $Res Function(_$ErrorImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of NotificationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null, Object? messages = null}) {
    return _then(
      _$ErrorImpl(
        null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
        messages: null == messages
            ? _value._messages
            : messages // ignore: cast_nullable_to_non_nullable
                  as List<NotificationModel>,
      ),
    );
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl(
    this.message, {
    final List<NotificationModel> messages = const [],
  }) : _messages = messages;

  @override
  final String message;
  final List<NotificationModel> _messages;
  @override
  @JsonKey()
  List<NotificationModel> get messages {
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  @override
  String toString() {
    return 'NotificationState.error(message: $message, messages: $messages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._messages, _messages));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    message,
    const DeepCollectionEquality().hash(_messages),
  );

  /// Create a copy of NotificationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<NotificationModel> messages) initial,
    required TResult Function(List<NotificationModel> messages) loading,
    required TResult Function(
      String title,
      String body,
      Map<String, dynamic> data,
      List<NotificationModel> messages,
    )
    notificationReceived,
    required TResult Function(List<NotificationModel> messages) messagesUpdated,
    required TResult Function(String message, List<NotificationModel> messages)
    error,
  }) {
    return error(message, messages);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<NotificationModel> messages)? initial,
    TResult? Function(List<NotificationModel> messages)? loading,
    TResult? Function(
      String title,
      String body,
      Map<String, dynamic> data,
      List<NotificationModel> messages,
    )?
    notificationReceived,
    TResult? Function(List<NotificationModel> messages)? messagesUpdated,
    TResult? Function(String message, List<NotificationModel> messages)? error,
  }) {
    return error?.call(message, messages);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<NotificationModel> messages)? initial,
    TResult Function(List<NotificationModel> messages)? loading,
    TResult Function(
      String title,
      String body,
      Map<String, dynamic> data,
      List<NotificationModel> messages,
    )?
    notificationReceived,
    TResult Function(List<NotificationModel> messages)? messagesUpdated,
    TResult Function(String message, List<NotificationModel> messages)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message, messages);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_NotificationReceived value) notificationReceived,
    required TResult Function(_MessagesUpdated value) messagesUpdated,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_NotificationReceived value)? notificationReceived,
    TResult? Function(_MessagesUpdated value)? messagesUpdated,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_NotificationReceived value)? notificationReceived,
    TResult Function(_MessagesUpdated value)? messagesUpdated,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements NotificationState {
  const factory _Error(
    final String message, {
    final List<NotificationModel> messages,
  }) = _$ErrorImpl;

  String get message;
  @override
  List<NotificationModel> get messages;

  /// Create a copy of NotificationState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
