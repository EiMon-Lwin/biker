// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sms_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SmsEvent {
  String get message => throw _privateConstructorUsedError;
  String get to => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, String to) sendSms,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, String to)? sendSms,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, String to)? sendSms,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendSmsEvent value) sendSms,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SendSmsEvent value)? sendSms,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendSmsEvent value)? sendSms,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SmsEventCopyWith<SmsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SmsEventCopyWith<$Res> {
  factory $SmsEventCopyWith(SmsEvent value, $Res Function(SmsEvent) then) =
      _$SmsEventCopyWithImpl<$Res, SmsEvent>;
  @useResult
  $Res call({String message, String to});
}

/// @nodoc
class _$SmsEventCopyWithImpl<$Res, $Val extends SmsEvent>
    implements $SmsEventCopyWith<$Res> {
  _$SmsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? to = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      to: null == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SendSmsEventImplCopyWith<$Res>
    implements $SmsEventCopyWith<$Res> {
  factory _$$SendSmsEventImplCopyWith(
          _$SendSmsEventImpl value, $Res Function(_$SendSmsEventImpl) then) =
      __$$SendSmsEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, String to});
}

/// @nodoc
class __$$SendSmsEventImplCopyWithImpl<$Res>
    extends _$SmsEventCopyWithImpl<$Res, _$SendSmsEventImpl>
    implements _$$SendSmsEventImplCopyWith<$Res> {
  __$$SendSmsEventImplCopyWithImpl(
      _$SendSmsEventImpl _value, $Res Function(_$SendSmsEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? to = null,
  }) {
    return _then(_$SendSmsEventImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      to: null == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SendSmsEventImpl implements SendSmsEvent {
  const _$SendSmsEventImpl({required this.message, required this.to});

  @override
  final String message;
  @override
  final String to;

  @override
  String toString() {
    return 'SmsEvent.sendSms(message: $message, to: $to)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendSmsEventImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.to, to) || other.to == to));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, to);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SendSmsEventImplCopyWith<_$SendSmsEventImpl> get copyWith =>
      __$$SendSmsEventImplCopyWithImpl<_$SendSmsEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, String to) sendSms,
  }) {
    return sendSms(message, to);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, String to)? sendSms,
  }) {
    return sendSms?.call(message, to);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, String to)? sendSms,
    required TResult orElse(),
  }) {
    if (sendSms != null) {
      return sendSms(message, to);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendSmsEvent value) sendSms,
  }) {
    return sendSms(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SendSmsEvent value)? sendSms,
  }) {
    return sendSms?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendSmsEvent value)? sendSms,
    required TResult orElse(),
  }) {
    if (sendSms != null) {
      return sendSms(this);
    }
    return orElse();
  }
}

abstract class SendSmsEvent implements SmsEvent {
  const factory SendSmsEvent(
      {required final String message,
      required final String to}) = _$SendSmsEventImpl;

  @override
  String get message;
  @override
  String get to;
  @override
  @JsonKey(ignore: true)
  _$$SendSmsEventImplCopyWith<_$SendSmsEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SmsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() sending,
    required TResult Function() error,
    required TResult Function() sent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? sending,
    TResult? Function()? error,
    TResult? Function()? sent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? sending,
    TResult Function()? error,
    TResult Function()? sent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SmsStateInitial value) initial,
    required TResult Function(SmsStateSending value) sending,
    required TResult Function(SmsStateError value) error,
    required TResult Function(SmsStateSent value) sent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SmsStateInitial value)? initial,
    TResult? Function(SmsStateSending value)? sending,
    TResult? Function(SmsStateError value)? error,
    TResult? Function(SmsStateSent value)? sent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SmsStateInitial value)? initial,
    TResult Function(SmsStateSending value)? sending,
    TResult Function(SmsStateError value)? error,
    TResult Function(SmsStateSent value)? sent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SmsStateCopyWith<$Res> {
  factory $SmsStateCopyWith(SmsState value, $Res Function(SmsState) then) =
      _$SmsStateCopyWithImpl<$Res, SmsState>;
}

/// @nodoc
class _$SmsStateCopyWithImpl<$Res, $Val extends SmsState>
    implements $SmsStateCopyWith<$Res> {
  _$SmsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SmsStateInitialImplCopyWith<$Res> {
  factory _$$SmsStateInitialImplCopyWith(_$SmsStateInitialImpl value,
          $Res Function(_$SmsStateInitialImpl) then) =
      __$$SmsStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SmsStateInitialImplCopyWithImpl<$Res>
    extends _$SmsStateCopyWithImpl<$Res, _$SmsStateInitialImpl>
    implements _$$SmsStateInitialImplCopyWith<$Res> {
  __$$SmsStateInitialImplCopyWithImpl(
      _$SmsStateInitialImpl _value, $Res Function(_$SmsStateInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SmsStateInitialImpl implements SmsStateInitial {
  const _$SmsStateInitialImpl();

  @override
  String toString() {
    return 'SmsState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SmsStateInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() sending,
    required TResult Function() error,
    required TResult Function() sent,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? sending,
    TResult? Function()? error,
    TResult? Function()? sent,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? sending,
    TResult Function()? error,
    TResult Function()? sent,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SmsStateInitial value) initial,
    required TResult Function(SmsStateSending value) sending,
    required TResult Function(SmsStateError value) error,
    required TResult Function(SmsStateSent value) sent,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SmsStateInitial value)? initial,
    TResult? Function(SmsStateSending value)? sending,
    TResult? Function(SmsStateError value)? error,
    TResult? Function(SmsStateSent value)? sent,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SmsStateInitial value)? initial,
    TResult Function(SmsStateSending value)? sending,
    TResult Function(SmsStateError value)? error,
    TResult Function(SmsStateSent value)? sent,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class SmsStateInitial implements SmsState {
  const factory SmsStateInitial() = _$SmsStateInitialImpl;
}

/// @nodoc
abstract class _$$SmsStateSendingImplCopyWith<$Res> {
  factory _$$SmsStateSendingImplCopyWith(_$SmsStateSendingImpl value,
          $Res Function(_$SmsStateSendingImpl) then) =
      __$$SmsStateSendingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SmsStateSendingImplCopyWithImpl<$Res>
    extends _$SmsStateCopyWithImpl<$Res, _$SmsStateSendingImpl>
    implements _$$SmsStateSendingImplCopyWith<$Res> {
  __$$SmsStateSendingImplCopyWithImpl(
      _$SmsStateSendingImpl _value, $Res Function(_$SmsStateSendingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SmsStateSendingImpl implements SmsStateSending {
  const _$SmsStateSendingImpl();

  @override
  String toString() {
    return 'SmsState.sending()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SmsStateSendingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() sending,
    required TResult Function() error,
    required TResult Function() sent,
  }) {
    return sending();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? sending,
    TResult? Function()? error,
    TResult? Function()? sent,
  }) {
    return sending?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? sending,
    TResult Function()? error,
    TResult Function()? sent,
    required TResult orElse(),
  }) {
    if (sending != null) {
      return sending();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SmsStateInitial value) initial,
    required TResult Function(SmsStateSending value) sending,
    required TResult Function(SmsStateError value) error,
    required TResult Function(SmsStateSent value) sent,
  }) {
    return sending(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SmsStateInitial value)? initial,
    TResult? Function(SmsStateSending value)? sending,
    TResult? Function(SmsStateError value)? error,
    TResult? Function(SmsStateSent value)? sent,
  }) {
    return sending?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SmsStateInitial value)? initial,
    TResult Function(SmsStateSending value)? sending,
    TResult Function(SmsStateError value)? error,
    TResult Function(SmsStateSent value)? sent,
    required TResult orElse(),
  }) {
    if (sending != null) {
      return sending(this);
    }
    return orElse();
  }
}

abstract class SmsStateSending implements SmsState {
  const factory SmsStateSending() = _$SmsStateSendingImpl;
}

/// @nodoc
abstract class _$$SmsStateErrorImplCopyWith<$Res> {
  factory _$$SmsStateErrorImplCopyWith(
          _$SmsStateErrorImpl value, $Res Function(_$SmsStateErrorImpl) then) =
      __$$SmsStateErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SmsStateErrorImplCopyWithImpl<$Res>
    extends _$SmsStateCopyWithImpl<$Res, _$SmsStateErrorImpl>
    implements _$$SmsStateErrorImplCopyWith<$Res> {
  __$$SmsStateErrorImplCopyWithImpl(
      _$SmsStateErrorImpl _value, $Res Function(_$SmsStateErrorImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SmsStateErrorImpl implements SmsStateError {
  const _$SmsStateErrorImpl();

  @override
  String toString() {
    return 'SmsState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SmsStateErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() sending,
    required TResult Function() error,
    required TResult Function() sent,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? sending,
    TResult? Function()? error,
    TResult? Function()? sent,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? sending,
    TResult Function()? error,
    TResult Function()? sent,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SmsStateInitial value) initial,
    required TResult Function(SmsStateSending value) sending,
    required TResult Function(SmsStateError value) error,
    required TResult Function(SmsStateSent value) sent,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SmsStateInitial value)? initial,
    TResult? Function(SmsStateSending value)? sending,
    TResult? Function(SmsStateError value)? error,
    TResult? Function(SmsStateSent value)? sent,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SmsStateInitial value)? initial,
    TResult Function(SmsStateSending value)? sending,
    TResult Function(SmsStateError value)? error,
    TResult Function(SmsStateSent value)? sent,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class SmsStateError implements SmsState {
  const factory SmsStateError() = _$SmsStateErrorImpl;
}

/// @nodoc
abstract class _$$SmsStateSentImplCopyWith<$Res> {
  factory _$$SmsStateSentImplCopyWith(
          _$SmsStateSentImpl value, $Res Function(_$SmsStateSentImpl) then) =
      __$$SmsStateSentImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SmsStateSentImplCopyWithImpl<$Res>
    extends _$SmsStateCopyWithImpl<$Res, _$SmsStateSentImpl>
    implements _$$SmsStateSentImplCopyWith<$Res> {
  __$$SmsStateSentImplCopyWithImpl(
      _$SmsStateSentImpl _value, $Res Function(_$SmsStateSentImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SmsStateSentImpl implements SmsStateSent {
  const _$SmsStateSentImpl();

  @override
  String toString() {
    return 'SmsState.sent()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SmsStateSentImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() sending,
    required TResult Function() error,
    required TResult Function() sent,
  }) {
    return sent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? sending,
    TResult? Function()? error,
    TResult? Function()? sent,
  }) {
    return sent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? sending,
    TResult Function()? error,
    TResult Function()? sent,
    required TResult orElse(),
  }) {
    if (sent != null) {
      return sent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SmsStateInitial value) initial,
    required TResult Function(SmsStateSending value) sending,
    required TResult Function(SmsStateError value) error,
    required TResult Function(SmsStateSent value) sent,
  }) {
    return sent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SmsStateInitial value)? initial,
    TResult? Function(SmsStateSending value)? sending,
    TResult? Function(SmsStateError value)? error,
    TResult? Function(SmsStateSent value)? sent,
  }) {
    return sent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SmsStateInitial value)? initial,
    TResult Function(SmsStateSending value)? sending,
    TResult Function(SmsStateError value)? error,
    TResult Function(SmsStateSent value)? sent,
    required TResult orElse(),
  }) {
    if (sent != null) {
      return sent(this);
    }
    return orElse();
  }
}

abstract class SmsStateSent implements SmsState {
  const factory SmsStateSent() = _$SmsStateSentImpl;
}
