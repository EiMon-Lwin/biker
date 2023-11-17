// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_in_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SignInEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() sendPinCode,
    required TResult Function(String pin) verifyPinCode,
    required TResult Function() sending,
    required TResult Function() sendingFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? sendPinCode,
    TResult? Function(String pin)? verifyPinCode,
    TResult? Function()? sending,
    TResult? Function()? sendingFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? sendPinCode,
    TResult Function(String pin)? verifyPinCode,
    TResult Function()? sending,
    TResult Function()? sendingFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SendPinCode value) sendPinCode,
    required TResult Function(_VerifyPinCode value) verifyPinCode,
    required TResult Function(_SendingPinCode value) sending,
    required TResult Function(_SendingPinCodeFailed value) sendingFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SendPinCode value)? sendPinCode,
    TResult? Function(_VerifyPinCode value)? verifyPinCode,
    TResult? Function(_SendingPinCode value)? sending,
    TResult? Function(_SendingPinCodeFailed value)? sendingFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendPinCode value)? sendPinCode,
    TResult Function(_VerifyPinCode value)? verifyPinCode,
    TResult Function(_SendingPinCode value)? sending,
    TResult Function(_SendingPinCodeFailed value)? sendingFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInEventCopyWith<$Res> {
  factory $SignInEventCopyWith(
          SignInEvent value, $Res Function(SignInEvent) then) =
      _$SignInEventCopyWithImpl<$Res, SignInEvent>;
}

/// @nodoc
class _$SignInEventCopyWithImpl<$Res, $Val extends SignInEvent>
    implements $SignInEventCopyWith<$Res> {
  _$SignInEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SendPinCodeImplCopyWith<$Res> {
  factory _$$SendPinCodeImplCopyWith(
          _$SendPinCodeImpl value, $Res Function(_$SendPinCodeImpl) then) =
      __$$SendPinCodeImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SendPinCodeImplCopyWithImpl<$Res>
    extends _$SignInEventCopyWithImpl<$Res, _$SendPinCodeImpl>
    implements _$$SendPinCodeImplCopyWith<$Res> {
  __$$SendPinCodeImplCopyWithImpl(
      _$SendPinCodeImpl _value, $Res Function(_$SendPinCodeImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SendPinCodeImpl with DiagnosticableTreeMixin implements _SendPinCode {
  const _$SendPinCodeImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignInEvent.sendPinCode()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'SignInEvent.sendPinCode'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SendPinCodeImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() sendPinCode,
    required TResult Function(String pin) verifyPinCode,
    required TResult Function() sending,
    required TResult Function() sendingFailed,
  }) {
    return sendPinCode();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? sendPinCode,
    TResult? Function(String pin)? verifyPinCode,
    TResult? Function()? sending,
    TResult? Function()? sendingFailed,
  }) {
    return sendPinCode?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? sendPinCode,
    TResult Function(String pin)? verifyPinCode,
    TResult Function()? sending,
    TResult Function()? sendingFailed,
    required TResult orElse(),
  }) {
    if (sendPinCode != null) {
      return sendPinCode();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SendPinCode value) sendPinCode,
    required TResult Function(_VerifyPinCode value) verifyPinCode,
    required TResult Function(_SendingPinCode value) sending,
    required TResult Function(_SendingPinCodeFailed value) sendingFailed,
  }) {
    return sendPinCode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SendPinCode value)? sendPinCode,
    TResult? Function(_VerifyPinCode value)? verifyPinCode,
    TResult? Function(_SendingPinCode value)? sending,
    TResult? Function(_SendingPinCodeFailed value)? sendingFailed,
  }) {
    return sendPinCode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendPinCode value)? sendPinCode,
    TResult Function(_VerifyPinCode value)? verifyPinCode,
    TResult Function(_SendingPinCode value)? sending,
    TResult Function(_SendingPinCodeFailed value)? sendingFailed,
    required TResult orElse(),
  }) {
    if (sendPinCode != null) {
      return sendPinCode(this);
    }
    return orElse();
  }
}

abstract class _SendPinCode implements SignInEvent {
  const factory _SendPinCode() = _$SendPinCodeImpl;
}

/// @nodoc
abstract class _$$VerifyPinCodeImplCopyWith<$Res> {
  factory _$$VerifyPinCodeImplCopyWith(
          _$VerifyPinCodeImpl value, $Res Function(_$VerifyPinCodeImpl) then) =
      __$$VerifyPinCodeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String pin});
}

/// @nodoc
class __$$VerifyPinCodeImplCopyWithImpl<$Res>
    extends _$SignInEventCopyWithImpl<$Res, _$VerifyPinCodeImpl>
    implements _$$VerifyPinCodeImplCopyWith<$Res> {
  __$$VerifyPinCodeImplCopyWithImpl(
      _$VerifyPinCodeImpl _value, $Res Function(_$VerifyPinCodeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pin = null,
  }) {
    return _then(_$VerifyPinCodeImpl(
      null == pin
          ? _value.pin
          : pin // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$VerifyPinCodeImpl
    with DiagnosticableTreeMixin
    implements _VerifyPinCode {
  const _$VerifyPinCodeImpl(this.pin);

  @override
  final String pin;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignInEvent.verifyPinCode(pin: $pin)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SignInEvent.verifyPinCode'))
      ..add(DiagnosticsProperty('pin', pin));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifyPinCodeImpl &&
            (identical(other.pin, pin) || other.pin == pin));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pin);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VerifyPinCodeImplCopyWith<_$VerifyPinCodeImpl> get copyWith =>
      __$$VerifyPinCodeImplCopyWithImpl<_$VerifyPinCodeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() sendPinCode,
    required TResult Function(String pin) verifyPinCode,
    required TResult Function() sending,
    required TResult Function() sendingFailed,
  }) {
    return verifyPinCode(pin);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? sendPinCode,
    TResult? Function(String pin)? verifyPinCode,
    TResult? Function()? sending,
    TResult? Function()? sendingFailed,
  }) {
    return verifyPinCode?.call(pin);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? sendPinCode,
    TResult Function(String pin)? verifyPinCode,
    TResult Function()? sending,
    TResult Function()? sendingFailed,
    required TResult orElse(),
  }) {
    if (verifyPinCode != null) {
      return verifyPinCode(pin);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SendPinCode value) sendPinCode,
    required TResult Function(_VerifyPinCode value) verifyPinCode,
    required TResult Function(_SendingPinCode value) sending,
    required TResult Function(_SendingPinCodeFailed value) sendingFailed,
  }) {
    return verifyPinCode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SendPinCode value)? sendPinCode,
    TResult? Function(_VerifyPinCode value)? verifyPinCode,
    TResult? Function(_SendingPinCode value)? sending,
    TResult? Function(_SendingPinCodeFailed value)? sendingFailed,
  }) {
    return verifyPinCode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendPinCode value)? sendPinCode,
    TResult Function(_VerifyPinCode value)? verifyPinCode,
    TResult Function(_SendingPinCode value)? sending,
    TResult Function(_SendingPinCodeFailed value)? sendingFailed,
    required TResult orElse(),
  }) {
    if (verifyPinCode != null) {
      return verifyPinCode(this);
    }
    return orElse();
  }
}

abstract class _VerifyPinCode implements SignInEvent {
  const factory _VerifyPinCode(final String pin) = _$VerifyPinCodeImpl;

  String get pin;
  @JsonKey(ignore: true)
  _$$VerifyPinCodeImplCopyWith<_$VerifyPinCodeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SendingPinCodeImplCopyWith<$Res> {
  factory _$$SendingPinCodeImplCopyWith(_$SendingPinCodeImpl value,
          $Res Function(_$SendingPinCodeImpl) then) =
      __$$SendingPinCodeImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SendingPinCodeImplCopyWithImpl<$Res>
    extends _$SignInEventCopyWithImpl<$Res, _$SendingPinCodeImpl>
    implements _$$SendingPinCodeImplCopyWith<$Res> {
  __$$SendingPinCodeImplCopyWithImpl(
      _$SendingPinCodeImpl _value, $Res Function(_$SendingPinCodeImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SendingPinCodeImpl
    with DiagnosticableTreeMixin
    implements _SendingPinCode {
  const _$SendingPinCodeImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignInEvent.sending()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'SignInEvent.sending'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SendingPinCodeImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() sendPinCode,
    required TResult Function(String pin) verifyPinCode,
    required TResult Function() sending,
    required TResult Function() sendingFailed,
  }) {
    return sending();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? sendPinCode,
    TResult? Function(String pin)? verifyPinCode,
    TResult? Function()? sending,
    TResult? Function()? sendingFailed,
  }) {
    return sending?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? sendPinCode,
    TResult Function(String pin)? verifyPinCode,
    TResult Function()? sending,
    TResult Function()? sendingFailed,
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
    required TResult Function(_SendPinCode value) sendPinCode,
    required TResult Function(_VerifyPinCode value) verifyPinCode,
    required TResult Function(_SendingPinCode value) sending,
    required TResult Function(_SendingPinCodeFailed value) sendingFailed,
  }) {
    return sending(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SendPinCode value)? sendPinCode,
    TResult? Function(_VerifyPinCode value)? verifyPinCode,
    TResult? Function(_SendingPinCode value)? sending,
    TResult? Function(_SendingPinCodeFailed value)? sendingFailed,
  }) {
    return sending?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendPinCode value)? sendPinCode,
    TResult Function(_VerifyPinCode value)? verifyPinCode,
    TResult Function(_SendingPinCode value)? sending,
    TResult Function(_SendingPinCodeFailed value)? sendingFailed,
    required TResult orElse(),
  }) {
    if (sending != null) {
      return sending(this);
    }
    return orElse();
  }
}

abstract class _SendingPinCode implements SignInEvent {
  const factory _SendingPinCode() = _$SendingPinCodeImpl;
}

/// @nodoc
abstract class _$$SendingPinCodeFailedImplCopyWith<$Res> {
  factory _$$SendingPinCodeFailedImplCopyWith(_$SendingPinCodeFailedImpl value,
          $Res Function(_$SendingPinCodeFailedImpl) then) =
      __$$SendingPinCodeFailedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SendingPinCodeFailedImplCopyWithImpl<$Res>
    extends _$SignInEventCopyWithImpl<$Res, _$SendingPinCodeFailedImpl>
    implements _$$SendingPinCodeFailedImplCopyWith<$Res> {
  __$$SendingPinCodeFailedImplCopyWithImpl(_$SendingPinCodeFailedImpl _value,
      $Res Function(_$SendingPinCodeFailedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SendingPinCodeFailedImpl
    with DiagnosticableTreeMixin
    implements _SendingPinCodeFailed {
  const _$SendingPinCodeFailedImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignInEvent.sendingFailed()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'SignInEvent.sendingFailed'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendingPinCodeFailedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() sendPinCode,
    required TResult Function(String pin) verifyPinCode,
    required TResult Function() sending,
    required TResult Function() sendingFailed,
  }) {
    return sendingFailed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? sendPinCode,
    TResult? Function(String pin)? verifyPinCode,
    TResult? Function()? sending,
    TResult? Function()? sendingFailed,
  }) {
    return sendingFailed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? sendPinCode,
    TResult Function(String pin)? verifyPinCode,
    TResult Function()? sending,
    TResult Function()? sendingFailed,
    required TResult orElse(),
  }) {
    if (sendingFailed != null) {
      return sendingFailed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SendPinCode value) sendPinCode,
    required TResult Function(_VerifyPinCode value) verifyPinCode,
    required TResult Function(_SendingPinCode value) sending,
    required TResult Function(_SendingPinCodeFailed value) sendingFailed,
  }) {
    return sendingFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SendPinCode value)? sendPinCode,
    TResult? Function(_VerifyPinCode value)? verifyPinCode,
    TResult? Function(_SendingPinCode value)? sending,
    TResult? Function(_SendingPinCodeFailed value)? sendingFailed,
  }) {
    return sendingFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendPinCode value)? sendPinCode,
    TResult Function(_VerifyPinCode value)? verifyPinCode,
    TResult Function(_SendingPinCode value)? sending,
    TResult Function(_SendingPinCodeFailed value)? sendingFailed,
    required TResult orElse(),
  }) {
    if (sendingFailed != null) {
      return sendingFailed(this);
    }
    return orElse();
  }
}

abstract class _SendingPinCodeFailed implements SignInEvent {
  const factory _SendingPinCodeFailed() = _$SendingPinCodeFailedImpl;
}

/// @nodoc
mixin _$SignInState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String pin) sendingSms,
    required TResult Function(String pin) signingIn,
    required TResult Function(String pin) success,
    required TResult Function(String pin) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String pin)? sendingSms,
    TResult? Function(String pin)? signingIn,
    TResult? Function(String pin)? success,
    TResult? Function(String pin)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String pin)? sendingSms,
    TResult Function(String pin)? signingIn,
    TResult Function(String pin)? success,
    TResult Function(String pin)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignInStatInitial value) initial,
    required TResult Function(SignInSendingSms value) sendingSms,
    required TResult Function(SignInSigningIn value) signingIn,
    required TResult Function(SignInSuccess value) success,
    required TResult Function(SignInFailed value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignInStatInitial value)? initial,
    TResult? Function(SignInSendingSms value)? sendingSms,
    TResult? Function(SignInSigningIn value)? signingIn,
    TResult? Function(SignInSuccess value)? success,
    TResult? Function(SignInFailed value)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignInStatInitial value)? initial,
    TResult Function(SignInSendingSms value)? sendingSms,
    TResult Function(SignInSigningIn value)? signingIn,
    TResult Function(SignInSuccess value)? success,
    TResult Function(SignInFailed value)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInStateCopyWith<$Res> {
  factory $SignInStateCopyWith(
          SignInState value, $Res Function(SignInState) then) =
      _$SignInStateCopyWithImpl<$Res, SignInState>;
}

/// @nodoc
class _$SignInStateCopyWithImpl<$Res, $Val extends SignInState>
    implements $SignInStateCopyWith<$Res> {
  _$SignInStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SignInStatInitialImplCopyWith<$Res> {
  factory _$$SignInStatInitialImplCopyWith(_$SignInStatInitialImpl value,
          $Res Function(_$SignInStatInitialImpl) then) =
      __$$SignInStatInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignInStatInitialImplCopyWithImpl<$Res>
    extends _$SignInStateCopyWithImpl<$Res, _$SignInStatInitialImpl>
    implements _$$SignInStatInitialImplCopyWith<$Res> {
  __$$SignInStatInitialImplCopyWithImpl(_$SignInStatInitialImpl _value,
      $Res Function(_$SignInStatInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SignInStatInitialImpl
    with DiagnosticableTreeMixin
    implements SignInStatInitial {
  const _$SignInStatInitialImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignInState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'SignInState.initial'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignInStatInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String pin) sendingSms,
    required TResult Function(String pin) signingIn,
    required TResult Function(String pin) success,
    required TResult Function(String pin) failed,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String pin)? sendingSms,
    TResult? Function(String pin)? signingIn,
    TResult? Function(String pin)? success,
    TResult? Function(String pin)? failed,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String pin)? sendingSms,
    TResult Function(String pin)? signingIn,
    TResult Function(String pin)? success,
    TResult Function(String pin)? failed,
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
    required TResult Function(SignInStatInitial value) initial,
    required TResult Function(SignInSendingSms value) sendingSms,
    required TResult Function(SignInSigningIn value) signingIn,
    required TResult Function(SignInSuccess value) success,
    required TResult Function(SignInFailed value) failed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignInStatInitial value)? initial,
    TResult? Function(SignInSendingSms value)? sendingSms,
    TResult? Function(SignInSigningIn value)? signingIn,
    TResult? Function(SignInSuccess value)? success,
    TResult? Function(SignInFailed value)? failed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignInStatInitial value)? initial,
    TResult Function(SignInSendingSms value)? sendingSms,
    TResult Function(SignInSigningIn value)? signingIn,
    TResult Function(SignInSuccess value)? success,
    TResult Function(SignInFailed value)? failed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class SignInStatInitial implements SignInState {
  const factory SignInStatInitial() = _$SignInStatInitialImpl;
}

/// @nodoc
abstract class _$$SignInSendingSmsImplCopyWith<$Res> {
  factory _$$SignInSendingSmsImplCopyWith(_$SignInSendingSmsImpl value,
          $Res Function(_$SignInSendingSmsImpl) then) =
      __$$SignInSendingSmsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String pin});
}

/// @nodoc
class __$$SignInSendingSmsImplCopyWithImpl<$Res>
    extends _$SignInStateCopyWithImpl<$Res, _$SignInSendingSmsImpl>
    implements _$$SignInSendingSmsImplCopyWith<$Res> {
  __$$SignInSendingSmsImplCopyWithImpl(_$SignInSendingSmsImpl _value,
      $Res Function(_$SignInSendingSmsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pin = null,
  }) {
    return _then(_$SignInSendingSmsImpl(
      null == pin
          ? _value.pin
          : pin // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SignInSendingSmsImpl
    with DiagnosticableTreeMixin
    implements SignInSendingSms {
  const _$SignInSendingSmsImpl(this.pin);

  @override
  final String pin;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignInState.sendingSms(pin: $pin)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SignInState.sendingSms'))
      ..add(DiagnosticsProperty('pin', pin));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInSendingSmsImpl &&
            (identical(other.pin, pin) || other.pin == pin));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pin);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignInSendingSmsImplCopyWith<_$SignInSendingSmsImpl> get copyWith =>
      __$$SignInSendingSmsImplCopyWithImpl<_$SignInSendingSmsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String pin) sendingSms,
    required TResult Function(String pin) signingIn,
    required TResult Function(String pin) success,
    required TResult Function(String pin) failed,
  }) {
    return sendingSms(pin);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String pin)? sendingSms,
    TResult? Function(String pin)? signingIn,
    TResult? Function(String pin)? success,
    TResult? Function(String pin)? failed,
  }) {
    return sendingSms?.call(pin);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String pin)? sendingSms,
    TResult Function(String pin)? signingIn,
    TResult Function(String pin)? success,
    TResult Function(String pin)? failed,
    required TResult orElse(),
  }) {
    if (sendingSms != null) {
      return sendingSms(pin);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignInStatInitial value) initial,
    required TResult Function(SignInSendingSms value) sendingSms,
    required TResult Function(SignInSigningIn value) signingIn,
    required TResult Function(SignInSuccess value) success,
    required TResult Function(SignInFailed value) failed,
  }) {
    return sendingSms(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignInStatInitial value)? initial,
    TResult? Function(SignInSendingSms value)? sendingSms,
    TResult? Function(SignInSigningIn value)? signingIn,
    TResult? Function(SignInSuccess value)? success,
    TResult? Function(SignInFailed value)? failed,
  }) {
    return sendingSms?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignInStatInitial value)? initial,
    TResult Function(SignInSendingSms value)? sendingSms,
    TResult Function(SignInSigningIn value)? signingIn,
    TResult Function(SignInSuccess value)? success,
    TResult Function(SignInFailed value)? failed,
    required TResult orElse(),
  }) {
    if (sendingSms != null) {
      return sendingSms(this);
    }
    return orElse();
  }
}

abstract class SignInSendingSms implements SignInState {
  const factory SignInSendingSms(final String pin) = _$SignInSendingSmsImpl;

  String get pin;
  @JsonKey(ignore: true)
  _$$SignInSendingSmsImplCopyWith<_$SignInSendingSmsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignInSigningInImplCopyWith<$Res> {
  factory _$$SignInSigningInImplCopyWith(_$SignInSigningInImpl value,
          $Res Function(_$SignInSigningInImpl) then) =
      __$$SignInSigningInImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String pin});
}

/// @nodoc
class __$$SignInSigningInImplCopyWithImpl<$Res>
    extends _$SignInStateCopyWithImpl<$Res, _$SignInSigningInImpl>
    implements _$$SignInSigningInImplCopyWith<$Res> {
  __$$SignInSigningInImplCopyWithImpl(
      _$SignInSigningInImpl _value, $Res Function(_$SignInSigningInImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pin = null,
  }) {
    return _then(_$SignInSigningInImpl(
      null == pin
          ? _value.pin
          : pin // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SignInSigningInImpl
    with DiagnosticableTreeMixin
    implements SignInSigningIn {
  const _$SignInSigningInImpl(this.pin);

  @override
  final String pin;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignInState.signingIn(pin: $pin)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SignInState.signingIn'))
      ..add(DiagnosticsProperty('pin', pin));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInSigningInImpl &&
            (identical(other.pin, pin) || other.pin == pin));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pin);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignInSigningInImplCopyWith<_$SignInSigningInImpl> get copyWith =>
      __$$SignInSigningInImplCopyWithImpl<_$SignInSigningInImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String pin) sendingSms,
    required TResult Function(String pin) signingIn,
    required TResult Function(String pin) success,
    required TResult Function(String pin) failed,
  }) {
    return signingIn(pin);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String pin)? sendingSms,
    TResult? Function(String pin)? signingIn,
    TResult? Function(String pin)? success,
    TResult? Function(String pin)? failed,
  }) {
    return signingIn?.call(pin);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String pin)? sendingSms,
    TResult Function(String pin)? signingIn,
    TResult Function(String pin)? success,
    TResult Function(String pin)? failed,
    required TResult orElse(),
  }) {
    if (signingIn != null) {
      return signingIn(pin);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignInStatInitial value) initial,
    required TResult Function(SignInSendingSms value) sendingSms,
    required TResult Function(SignInSigningIn value) signingIn,
    required TResult Function(SignInSuccess value) success,
    required TResult Function(SignInFailed value) failed,
  }) {
    return signingIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignInStatInitial value)? initial,
    TResult? Function(SignInSendingSms value)? sendingSms,
    TResult? Function(SignInSigningIn value)? signingIn,
    TResult? Function(SignInSuccess value)? success,
    TResult? Function(SignInFailed value)? failed,
  }) {
    return signingIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignInStatInitial value)? initial,
    TResult Function(SignInSendingSms value)? sendingSms,
    TResult Function(SignInSigningIn value)? signingIn,
    TResult Function(SignInSuccess value)? success,
    TResult Function(SignInFailed value)? failed,
    required TResult orElse(),
  }) {
    if (signingIn != null) {
      return signingIn(this);
    }
    return orElse();
  }
}

abstract class SignInSigningIn implements SignInState {
  const factory SignInSigningIn(final String pin) = _$SignInSigningInImpl;

  String get pin;
  @JsonKey(ignore: true)
  _$$SignInSigningInImplCopyWith<_$SignInSigningInImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignInSuccessImplCopyWith<$Res> {
  factory _$$SignInSuccessImplCopyWith(
          _$SignInSuccessImpl value, $Res Function(_$SignInSuccessImpl) then) =
      __$$SignInSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String pin});
}

/// @nodoc
class __$$SignInSuccessImplCopyWithImpl<$Res>
    extends _$SignInStateCopyWithImpl<$Res, _$SignInSuccessImpl>
    implements _$$SignInSuccessImplCopyWith<$Res> {
  __$$SignInSuccessImplCopyWithImpl(
      _$SignInSuccessImpl _value, $Res Function(_$SignInSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pin = null,
  }) {
    return _then(_$SignInSuccessImpl(
      null == pin
          ? _value.pin
          : pin // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SignInSuccessImpl
    with DiagnosticableTreeMixin
    implements SignInSuccess {
  const _$SignInSuccessImpl(this.pin);

  @override
  final String pin;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignInState.success(pin: $pin)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SignInState.success'))
      ..add(DiagnosticsProperty('pin', pin));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInSuccessImpl &&
            (identical(other.pin, pin) || other.pin == pin));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pin);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignInSuccessImplCopyWith<_$SignInSuccessImpl> get copyWith =>
      __$$SignInSuccessImplCopyWithImpl<_$SignInSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String pin) sendingSms,
    required TResult Function(String pin) signingIn,
    required TResult Function(String pin) success,
    required TResult Function(String pin) failed,
  }) {
    return success(pin);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String pin)? sendingSms,
    TResult? Function(String pin)? signingIn,
    TResult? Function(String pin)? success,
    TResult? Function(String pin)? failed,
  }) {
    return success?.call(pin);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String pin)? sendingSms,
    TResult Function(String pin)? signingIn,
    TResult Function(String pin)? success,
    TResult Function(String pin)? failed,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(pin);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignInStatInitial value) initial,
    required TResult Function(SignInSendingSms value) sendingSms,
    required TResult Function(SignInSigningIn value) signingIn,
    required TResult Function(SignInSuccess value) success,
    required TResult Function(SignInFailed value) failed,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignInStatInitial value)? initial,
    TResult? Function(SignInSendingSms value)? sendingSms,
    TResult? Function(SignInSigningIn value)? signingIn,
    TResult? Function(SignInSuccess value)? success,
    TResult? Function(SignInFailed value)? failed,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignInStatInitial value)? initial,
    TResult Function(SignInSendingSms value)? sendingSms,
    TResult Function(SignInSigningIn value)? signingIn,
    TResult Function(SignInSuccess value)? success,
    TResult Function(SignInFailed value)? failed,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class SignInSuccess implements SignInState {
  const factory SignInSuccess(final String pin) = _$SignInSuccessImpl;

  String get pin;
  @JsonKey(ignore: true)
  _$$SignInSuccessImplCopyWith<_$SignInSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignInFailedImplCopyWith<$Res> {
  factory _$$SignInFailedImplCopyWith(
          _$SignInFailedImpl value, $Res Function(_$SignInFailedImpl) then) =
      __$$SignInFailedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String pin});
}

/// @nodoc
class __$$SignInFailedImplCopyWithImpl<$Res>
    extends _$SignInStateCopyWithImpl<$Res, _$SignInFailedImpl>
    implements _$$SignInFailedImplCopyWith<$Res> {
  __$$SignInFailedImplCopyWithImpl(
      _$SignInFailedImpl _value, $Res Function(_$SignInFailedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pin = null,
  }) {
    return _then(_$SignInFailedImpl(
      null == pin
          ? _value.pin
          : pin // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SignInFailedImpl with DiagnosticableTreeMixin implements SignInFailed {
  const _$SignInFailedImpl(this.pin);

  @override
  final String pin;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignInState.failed(pin: $pin)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SignInState.failed'))
      ..add(DiagnosticsProperty('pin', pin));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInFailedImpl &&
            (identical(other.pin, pin) || other.pin == pin));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pin);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignInFailedImplCopyWith<_$SignInFailedImpl> get copyWith =>
      __$$SignInFailedImplCopyWithImpl<_$SignInFailedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String pin) sendingSms,
    required TResult Function(String pin) signingIn,
    required TResult Function(String pin) success,
    required TResult Function(String pin) failed,
  }) {
    return failed(pin);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String pin)? sendingSms,
    TResult? Function(String pin)? signingIn,
    TResult? Function(String pin)? success,
    TResult? Function(String pin)? failed,
  }) {
    return failed?.call(pin);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String pin)? sendingSms,
    TResult Function(String pin)? signingIn,
    TResult Function(String pin)? success,
    TResult Function(String pin)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(pin);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignInStatInitial value) initial,
    required TResult Function(SignInSendingSms value) sendingSms,
    required TResult Function(SignInSigningIn value) signingIn,
    required TResult Function(SignInSuccess value) success,
    required TResult Function(SignInFailed value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignInStatInitial value)? initial,
    TResult? Function(SignInSendingSms value)? sendingSms,
    TResult? Function(SignInSigningIn value)? signingIn,
    TResult? Function(SignInSuccess value)? success,
    TResult? Function(SignInFailed value)? failed,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignInStatInitial value)? initial,
    TResult Function(SignInSendingSms value)? sendingSms,
    TResult Function(SignInSigningIn value)? signingIn,
    TResult Function(SignInSuccess value)? success,
    TResult Function(SignInFailed value)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class SignInFailed implements SignInState {
  const factory SignInFailed(final String pin) = _$SignInFailedImpl;

  String get pin;
  @JsonKey(ignore: true)
  _$$SignInFailedImplCopyWith<_$SignInFailedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
