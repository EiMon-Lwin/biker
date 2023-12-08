// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'resend_pin_button_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ResendPinButtonEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() start,
    required TResult Function() stop,
    required TResult Function() reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? start,
    TResult? Function()? stop,
    TResult? Function()? reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function()? stop,
    TResult Function()? reset,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartButtonEvent value) start,
    required TResult Function(StopButtonEvent value) stop,
    required TResult Function(ResetButtonEvent value) reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StartButtonEvent value)? start,
    TResult? Function(StopButtonEvent value)? stop,
    TResult? Function(ResetButtonEvent value)? reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartButtonEvent value)? start,
    TResult Function(StopButtonEvent value)? stop,
    TResult Function(ResetButtonEvent value)? reset,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResendPinButtonEventCopyWith<$Res> {
  factory $ResendPinButtonEventCopyWith(ResendPinButtonEvent value,
          $Res Function(ResendPinButtonEvent) then) =
      _$ResendPinButtonEventCopyWithImpl<$Res, ResendPinButtonEvent>;
}

/// @nodoc
class _$ResendPinButtonEventCopyWithImpl<$Res,
        $Val extends ResendPinButtonEvent>
    implements $ResendPinButtonEventCopyWith<$Res> {
  _$ResendPinButtonEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartButtonEventImplCopyWith<$Res> {
  factory _$$StartButtonEventImplCopyWith(_$StartButtonEventImpl value,
          $Res Function(_$StartButtonEventImpl) then) =
      __$$StartButtonEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartButtonEventImplCopyWithImpl<$Res>
    extends _$ResendPinButtonEventCopyWithImpl<$Res, _$StartButtonEventImpl>
    implements _$$StartButtonEventImplCopyWith<$Res> {
  __$$StartButtonEventImplCopyWithImpl(_$StartButtonEventImpl _value,
      $Res Function(_$StartButtonEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartButtonEventImpl implements StartButtonEvent {
  const _$StartButtonEventImpl();

  @override
  String toString() {
    return 'ResendPinButtonEvent.start()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartButtonEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() start,
    required TResult Function() stop,
    required TResult Function() reset,
  }) {
    return start();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? start,
    TResult? Function()? stop,
    TResult? Function()? reset,
  }) {
    return start?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function()? stop,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartButtonEvent value) start,
    required TResult Function(StopButtonEvent value) stop,
    required TResult Function(ResetButtonEvent value) reset,
  }) {
    return start(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StartButtonEvent value)? start,
    TResult? Function(StopButtonEvent value)? stop,
    TResult? Function(ResetButtonEvent value)? reset,
  }) {
    return start?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartButtonEvent value)? start,
    TResult Function(StopButtonEvent value)? stop,
    TResult Function(ResetButtonEvent value)? reset,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start(this);
    }
    return orElse();
  }
}

abstract class StartButtonEvent implements ResendPinButtonEvent {
  const factory StartButtonEvent() = _$StartButtonEventImpl;
}

/// @nodoc
abstract class _$$StopButtonEventImplCopyWith<$Res> {
  factory _$$StopButtonEventImplCopyWith(_$StopButtonEventImpl value,
          $Res Function(_$StopButtonEventImpl) then) =
      __$$StopButtonEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StopButtonEventImplCopyWithImpl<$Res>
    extends _$ResendPinButtonEventCopyWithImpl<$Res, _$StopButtonEventImpl>
    implements _$$StopButtonEventImplCopyWith<$Res> {
  __$$StopButtonEventImplCopyWithImpl(
      _$StopButtonEventImpl _value, $Res Function(_$StopButtonEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StopButtonEventImpl implements StopButtonEvent {
  const _$StopButtonEventImpl();

  @override
  String toString() {
    return 'ResendPinButtonEvent.stop()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StopButtonEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() start,
    required TResult Function() stop,
    required TResult Function() reset,
  }) {
    return stop();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? start,
    TResult? Function()? stop,
    TResult? Function()? reset,
  }) {
    return stop?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function()? stop,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (stop != null) {
      return stop();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartButtonEvent value) start,
    required TResult Function(StopButtonEvent value) stop,
    required TResult Function(ResetButtonEvent value) reset,
  }) {
    return stop(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StartButtonEvent value)? start,
    TResult? Function(StopButtonEvent value)? stop,
    TResult? Function(ResetButtonEvent value)? reset,
  }) {
    return stop?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartButtonEvent value)? start,
    TResult Function(StopButtonEvent value)? stop,
    TResult Function(ResetButtonEvent value)? reset,
    required TResult orElse(),
  }) {
    if (stop != null) {
      return stop(this);
    }
    return orElse();
  }
}

abstract class StopButtonEvent implements ResendPinButtonEvent {
  const factory StopButtonEvent() = _$StopButtonEventImpl;
}

/// @nodoc
abstract class _$$ResetButtonEventImplCopyWith<$Res> {
  factory _$$ResetButtonEventImplCopyWith(_$ResetButtonEventImpl value,
          $Res Function(_$ResetButtonEventImpl) then) =
      __$$ResetButtonEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ResetButtonEventImplCopyWithImpl<$Res>
    extends _$ResendPinButtonEventCopyWithImpl<$Res, _$ResetButtonEventImpl>
    implements _$$ResetButtonEventImplCopyWith<$Res> {
  __$$ResetButtonEventImplCopyWithImpl(_$ResetButtonEventImpl _value,
      $Res Function(_$ResetButtonEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ResetButtonEventImpl implements ResetButtonEvent {
  const _$ResetButtonEventImpl();

  @override
  String toString() {
    return 'ResendPinButtonEvent.reset()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ResetButtonEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() start,
    required TResult Function() stop,
    required TResult Function() reset,
  }) {
    return reset();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? start,
    TResult? Function()? stop,
    TResult? Function()? reset,
  }) {
    return reset?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function()? stop,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartButtonEvent value) start,
    required TResult Function(StopButtonEvent value) stop,
    required TResult Function(ResetButtonEvent value) reset,
  }) {
    return reset(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StartButtonEvent value)? start,
    TResult? Function(StopButtonEvent value)? stop,
    TResult? Function(ResetButtonEvent value)? reset,
  }) {
    return reset?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartButtonEvent value)? start,
    TResult Function(StopButtonEvent value)? stop,
    TResult Function(ResetButtonEvent value)? reset,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset(this);
    }
    return orElse();
  }
}

abstract class ResetButtonEvent implements ResendPinButtonEvent {
  const factory ResetButtonEvent() = _$ResetButtonEventImpl;
}

/// @nodoc
mixin _$ResendPinButtonState {
  int get currentTicks => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int currentTicks) initial,
    required TResult Function(int currentTicks) running,
    required TResult Function(int currentTicks) resend,
    required TResult Function(int currentTicks) timeOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int currentTicks)? initial,
    TResult? Function(int currentTicks)? running,
    TResult? Function(int currentTicks)? resend,
    TResult? Function(int currentTicks)? timeOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int currentTicks)? initial,
    TResult Function(int currentTicks)? running,
    TResult Function(int currentTicks)? resend,
    TResult Function(int currentTicks)? timeOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ResendPinButtonInitial value) initial,
    required TResult Function(ResendPinButtonRunning value) running,
    required TResult Function(ResendPinButtonResend value) resend,
    required TResult Function(ResendPinButtonTimeOut value) timeOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ResendPinButtonInitial value)? initial,
    TResult? Function(ResendPinButtonRunning value)? running,
    TResult? Function(ResendPinButtonResend value)? resend,
    TResult? Function(ResendPinButtonTimeOut value)? timeOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ResendPinButtonInitial value)? initial,
    TResult Function(ResendPinButtonRunning value)? running,
    TResult Function(ResendPinButtonResend value)? resend,
    TResult Function(ResendPinButtonTimeOut value)? timeOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ResendPinButtonStateCopyWith<ResendPinButtonState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResendPinButtonStateCopyWith<$Res> {
  factory $ResendPinButtonStateCopyWith(ResendPinButtonState value,
          $Res Function(ResendPinButtonState) then) =
      _$ResendPinButtonStateCopyWithImpl<$Res, ResendPinButtonState>;
  @useResult
  $Res call({int currentTicks});
}

/// @nodoc
class _$ResendPinButtonStateCopyWithImpl<$Res,
        $Val extends ResendPinButtonState>
    implements $ResendPinButtonStateCopyWith<$Res> {
  _$ResendPinButtonStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentTicks = null,
  }) {
    return _then(_value.copyWith(
      currentTicks: null == currentTicks
          ? _value.currentTicks
          : currentTicks // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResendPinButtonInitialImplCopyWith<$Res>
    implements $ResendPinButtonStateCopyWith<$Res> {
  factory _$$ResendPinButtonInitialImplCopyWith(
          _$ResendPinButtonInitialImpl value,
          $Res Function(_$ResendPinButtonInitialImpl) then) =
      __$$ResendPinButtonInitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int currentTicks});
}

/// @nodoc
class __$$ResendPinButtonInitialImplCopyWithImpl<$Res>
    extends _$ResendPinButtonStateCopyWithImpl<$Res,
        _$ResendPinButtonInitialImpl>
    implements _$$ResendPinButtonInitialImplCopyWith<$Res> {
  __$$ResendPinButtonInitialImplCopyWithImpl(
      _$ResendPinButtonInitialImpl _value,
      $Res Function(_$ResendPinButtonInitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentTicks = null,
  }) {
    return _then(_$ResendPinButtonInitialImpl(
      null == currentTicks
          ? _value.currentTicks
          : currentTicks // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ResendPinButtonInitialImpl implements ResendPinButtonInitial {
  const _$ResendPinButtonInitialImpl(this.currentTicks);

  @override
  final int currentTicks;

  @override
  String toString() {
    return 'ResendPinButtonState.initial(currentTicks: $currentTicks)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResendPinButtonInitialImpl &&
            (identical(other.currentTicks, currentTicks) ||
                other.currentTicks == currentTicks));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentTicks);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResendPinButtonInitialImplCopyWith<_$ResendPinButtonInitialImpl>
      get copyWith => __$$ResendPinButtonInitialImplCopyWithImpl<
          _$ResendPinButtonInitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int currentTicks) initial,
    required TResult Function(int currentTicks) running,
    required TResult Function(int currentTicks) resend,
    required TResult Function(int currentTicks) timeOut,
  }) {
    return initial(currentTicks);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int currentTicks)? initial,
    TResult? Function(int currentTicks)? running,
    TResult? Function(int currentTicks)? resend,
    TResult? Function(int currentTicks)? timeOut,
  }) {
    return initial?.call(currentTicks);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int currentTicks)? initial,
    TResult Function(int currentTicks)? running,
    TResult Function(int currentTicks)? resend,
    TResult Function(int currentTicks)? timeOut,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(currentTicks);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ResendPinButtonInitial value) initial,
    required TResult Function(ResendPinButtonRunning value) running,
    required TResult Function(ResendPinButtonResend value) resend,
    required TResult Function(ResendPinButtonTimeOut value) timeOut,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ResendPinButtonInitial value)? initial,
    TResult? Function(ResendPinButtonRunning value)? running,
    TResult? Function(ResendPinButtonResend value)? resend,
    TResult? Function(ResendPinButtonTimeOut value)? timeOut,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ResendPinButtonInitial value)? initial,
    TResult Function(ResendPinButtonRunning value)? running,
    TResult Function(ResendPinButtonResend value)? resend,
    TResult Function(ResendPinButtonTimeOut value)? timeOut,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class ResendPinButtonInitial implements ResendPinButtonState {
  const factory ResendPinButtonInitial(final int currentTicks) =
      _$ResendPinButtonInitialImpl;

  @override
  int get currentTicks;
  @override
  @JsonKey(ignore: true)
  _$$ResendPinButtonInitialImplCopyWith<_$ResendPinButtonInitialImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResendPinButtonRunningImplCopyWith<$Res>
    implements $ResendPinButtonStateCopyWith<$Res> {
  factory _$$ResendPinButtonRunningImplCopyWith(
          _$ResendPinButtonRunningImpl value,
          $Res Function(_$ResendPinButtonRunningImpl) then) =
      __$$ResendPinButtonRunningImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int currentTicks});
}

/// @nodoc
class __$$ResendPinButtonRunningImplCopyWithImpl<$Res>
    extends _$ResendPinButtonStateCopyWithImpl<$Res,
        _$ResendPinButtonRunningImpl>
    implements _$$ResendPinButtonRunningImplCopyWith<$Res> {
  __$$ResendPinButtonRunningImplCopyWithImpl(
      _$ResendPinButtonRunningImpl _value,
      $Res Function(_$ResendPinButtonRunningImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentTicks = null,
  }) {
    return _then(_$ResendPinButtonRunningImpl(
      null == currentTicks
          ? _value.currentTicks
          : currentTicks // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ResendPinButtonRunningImpl implements ResendPinButtonRunning {
  const _$ResendPinButtonRunningImpl(this.currentTicks);

  @override
  final int currentTicks;

  @override
  String toString() {
    return 'ResendPinButtonState.running(currentTicks: $currentTicks)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResendPinButtonRunningImpl &&
            (identical(other.currentTicks, currentTicks) ||
                other.currentTicks == currentTicks));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentTicks);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResendPinButtonRunningImplCopyWith<_$ResendPinButtonRunningImpl>
      get copyWith => __$$ResendPinButtonRunningImplCopyWithImpl<
          _$ResendPinButtonRunningImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int currentTicks) initial,
    required TResult Function(int currentTicks) running,
    required TResult Function(int currentTicks) resend,
    required TResult Function(int currentTicks) timeOut,
  }) {
    return running(currentTicks);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int currentTicks)? initial,
    TResult? Function(int currentTicks)? running,
    TResult? Function(int currentTicks)? resend,
    TResult? Function(int currentTicks)? timeOut,
  }) {
    return running?.call(currentTicks);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int currentTicks)? initial,
    TResult Function(int currentTicks)? running,
    TResult Function(int currentTicks)? resend,
    TResult Function(int currentTicks)? timeOut,
    required TResult orElse(),
  }) {
    if (running != null) {
      return running(currentTicks);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ResendPinButtonInitial value) initial,
    required TResult Function(ResendPinButtonRunning value) running,
    required TResult Function(ResendPinButtonResend value) resend,
    required TResult Function(ResendPinButtonTimeOut value) timeOut,
  }) {
    return running(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ResendPinButtonInitial value)? initial,
    TResult? Function(ResendPinButtonRunning value)? running,
    TResult? Function(ResendPinButtonResend value)? resend,
    TResult? Function(ResendPinButtonTimeOut value)? timeOut,
  }) {
    return running?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ResendPinButtonInitial value)? initial,
    TResult Function(ResendPinButtonRunning value)? running,
    TResult Function(ResendPinButtonResend value)? resend,
    TResult Function(ResendPinButtonTimeOut value)? timeOut,
    required TResult orElse(),
  }) {
    if (running != null) {
      return running(this);
    }
    return orElse();
  }
}

abstract class ResendPinButtonRunning implements ResendPinButtonState {
  const factory ResendPinButtonRunning(final int currentTicks) =
      _$ResendPinButtonRunningImpl;

  @override
  int get currentTicks;
  @override
  @JsonKey(ignore: true)
  _$$ResendPinButtonRunningImplCopyWith<_$ResendPinButtonRunningImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResendPinButtonResendImplCopyWith<$Res>
    implements $ResendPinButtonStateCopyWith<$Res> {
  factory _$$ResendPinButtonResendImplCopyWith(
          _$ResendPinButtonResendImpl value,
          $Res Function(_$ResendPinButtonResendImpl) then) =
      __$$ResendPinButtonResendImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int currentTicks});
}

/// @nodoc
class __$$ResendPinButtonResendImplCopyWithImpl<$Res>
    extends _$ResendPinButtonStateCopyWithImpl<$Res,
        _$ResendPinButtonResendImpl>
    implements _$$ResendPinButtonResendImplCopyWith<$Res> {
  __$$ResendPinButtonResendImplCopyWithImpl(_$ResendPinButtonResendImpl _value,
      $Res Function(_$ResendPinButtonResendImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentTicks = null,
  }) {
    return _then(_$ResendPinButtonResendImpl(
      null == currentTicks
          ? _value.currentTicks
          : currentTicks // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ResendPinButtonResendImpl implements ResendPinButtonResend {
  const _$ResendPinButtonResendImpl(this.currentTicks);

  @override
  final int currentTicks;

  @override
  String toString() {
    return 'ResendPinButtonState.resend(currentTicks: $currentTicks)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResendPinButtonResendImpl &&
            (identical(other.currentTicks, currentTicks) ||
                other.currentTicks == currentTicks));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentTicks);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResendPinButtonResendImplCopyWith<_$ResendPinButtonResendImpl>
      get copyWith => __$$ResendPinButtonResendImplCopyWithImpl<
          _$ResendPinButtonResendImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int currentTicks) initial,
    required TResult Function(int currentTicks) running,
    required TResult Function(int currentTicks) resend,
    required TResult Function(int currentTicks) timeOut,
  }) {
    return resend(currentTicks);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int currentTicks)? initial,
    TResult? Function(int currentTicks)? running,
    TResult? Function(int currentTicks)? resend,
    TResult? Function(int currentTicks)? timeOut,
  }) {
    return resend?.call(currentTicks);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int currentTicks)? initial,
    TResult Function(int currentTicks)? running,
    TResult Function(int currentTicks)? resend,
    TResult Function(int currentTicks)? timeOut,
    required TResult orElse(),
  }) {
    if (resend != null) {
      return resend(currentTicks);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ResendPinButtonInitial value) initial,
    required TResult Function(ResendPinButtonRunning value) running,
    required TResult Function(ResendPinButtonResend value) resend,
    required TResult Function(ResendPinButtonTimeOut value) timeOut,
  }) {
    return resend(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ResendPinButtonInitial value)? initial,
    TResult? Function(ResendPinButtonRunning value)? running,
    TResult? Function(ResendPinButtonResend value)? resend,
    TResult? Function(ResendPinButtonTimeOut value)? timeOut,
  }) {
    return resend?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ResendPinButtonInitial value)? initial,
    TResult Function(ResendPinButtonRunning value)? running,
    TResult Function(ResendPinButtonResend value)? resend,
    TResult Function(ResendPinButtonTimeOut value)? timeOut,
    required TResult orElse(),
  }) {
    if (resend != null) {
      return resend(this);
    }
    return orElse();
  }
}

abstract class ResendPinButtonResend implements ResendPinButtonState {
  const factory ResendPinButtonResend(final int currentTicks) =
      _$ResendPinButtonResendImpl;

  @override
  int get currentTicks;
  @override
  @JsonKey(ignore: true)
  _$$ResendPinButtonResendImplCopyWith<_$ResendPinButtonResendImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResendPinButtonTimeOutImplCopyWith<$Res>
    implements $ResendPinButtonStateCopyWith<$Res> {
  factory _$$ResendPinButtonTimeOutImplCopyWith(
          _$ResendPinButtonTimeOutImpl value,
          $Res Function(_$ResendPinButtonTimeOutImpl) then) =
      __$$ResendPinButtonTimeOutImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int currentTicks});
}

/// @nodoc
class __$$ResendPinButtonTimeOutImplCopyWithImpl<$Res>
    extends _$ResendPinButtonStateCopyWithImpl<$Res,
        _$ResendPinButtonTimeOutImpl>
    implements _$$ResendPinButtonTimeOutImplCopyWith<$Res> {
  __$$ResendPinButtonTimeOutImplCopyWithImpl(
      _$ResendPinButtonTimeOutImpl _value,
      $Res Function(_$ResendPinButtonTimeOutImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentTicks = null,
  }) {
    return _then(_$ResendPinButtonTimeOutImpl(
      null == currentTicks
          ? _value.currentTicks
          : currentTicks // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ResendPinButtonTimeOutImpl implements ResendPinButtonTimeOut {
  const _$ResendPinButtonTimeOutImpl(this.currentTicks);

  @override
  final int currentTicks;

  @override
  String toString() {
    return 'ResendPinButtonState.timeOut(currentTicks: $currentTicks)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResendPinButtonTimeOutImpl &&
            (identical(other.currentTicks, currentTicks) ||
                other.currentTicks == currentTicks));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentTicks);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResendPinButtonTimeOutImplCopyWith<_$ResendPinButtonTimeOutImpl>
      get copyWith => __$$ResendPinButtonTimeOutImplCopyWithImpl<
          _$ResendPinButtonTimeOutImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int currentTicks) initial,
    required TResult Function(int currentTicks) running,
    required TResult Function(int currentTicks) resend,
    required TResult Function(int currentTicks) timeOut,
  }) {
    return timeOut(currentTicks);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int currentTicks)? initial,
    TResult? Function(int currentTicks)? running,
    TResult? Function(int currentTicks)? resend,
    TResult? Function(int currentTicks)? timeOut,
  }) {
    return timeOut?.call(currentTicks);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int currentTicks)? initial,
    TResult Function(int currentTicks)? running,
    TResult Function(int currentTicks)? resend,
    TResult Function(int currentTicks)? timeOut,
    required TResult orElse(),
  }) {
    if (timeOut != null) {
      return timeOut(currentTicks);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ResendPinButtonInitial value) initial,
    required TResult Function(ResendPinButtonRunning value) running,
    required TResult Function(ResendPinButtonResend value) resend,
    required TResult Function(ResendPinButtonTimeOut value) timeOut,
  }) {
    return timeOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ResendPinButtonInitial value)? initial,
    TResult? Function(ResendPinButtonRunning value)? running,
    TResult? Function(ResendPinButtonResend value)? resend,
    TResult? Function(ResendPinButtonTimeOut value)? timeOut,
  }) {
    return timeOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ResendPinButtonInitial value)? initial,
    TResult Function(ResendPinButtonRunning value)? running,
    TResult Function(ResendPinButtonResend value)? resend,
    TResult Function(ResendPinButtonTimeOut value)? timeOut,
    required TResult orElse(),
  }) {
    if (timeOut != null) {
      return timeOut(this);
    }
    return orElse();
  }
}

abstract class ResendPinButtonTimeOut implements ResendPinButtonState {
  const factory ResendPinButtonTimeOut(final int currentTicks) =
      _$ResendPinButtonTimeOutImpl;

  @override
  int get currentTicks;
  @override
  @JsonKey(ignore: true)
  _$$ResendPinButtonTimeOutImplCopyWith<_$ResendPinButtonTimeOutImpl>
      get copyWith => throw _privateConstructorUsedError;
}
