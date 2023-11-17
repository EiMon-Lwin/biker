// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'splash_page_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SplashPageEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function() ready,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function()? ready,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function()? ready,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SplashPageIniitalizeEvent value) initialize,
    required TResult Function(SplashPageReadyEvent value) ready,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SplashPageIniitalizeEvent value)? initialize,
    TResult? Function(SplashPageReadyEvent value)? ready,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SplashPageIniitalizeEvent value)? initialize,
    TResult Function(SplashPageReadyEvent value)? ready,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SplashPageEventCopyWith<$Res> {
  factory $SplashPageEventCopyWith(
          SplashPageEvent value, $Res Function(SplashPageEvent) then) =
      _$SplashPageEventCopyWithImpl<$Res, SplashPageEvent>;
}

/// @nodoc
class _$SplashPageEventCopyWithImpl<$Res, $Val extends SplashPageEvent>
    implements $SplashPageEventCopyWith<$Res> {
  _$SplashPageEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SplashPageIniitalizeEventImplCopyWith<$Res> {
  factory _$$SplashPageIniitalizeEventImplCopyWith(
          _$SplashPageIniitalizeEventImpl value,
          $Res Function(_$SplashPageIniitalizeEventImpl) then) =
      __$$SplashPageIniitalizeEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SplashPageIniitalizeEventImplCopyWithImpl<$Res>
    extends _$SplashPageEventCopyWithImpl<$Res, _$SplashPageIniitalizeEventImpl>
    implements _$$SplashPageIniitalizeEventImplCopyWith<$Res> {
  __$$SplashPageIniitalizeEventImplCopyWithImpl(
      _$SplashPageIniitalizeEventImpl _value,
      $Res Function(_$SplashPageIniitalizeEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SplashPageIniitalizeEventImpl implements SplashPageIniitalizeEvent {
  const _$SplashPageIniitalizeEventImpl();

  @override
  String toString() {
    return 'SplashPageEvent.initialize()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SplashPageIniitalizeEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function() ready,
  }) {
    return initialize();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function()? ready,
  }) {
    return initialize?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function()? ready,
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
    required TResult Function(SplashPageIniitalizeEvent value) initialize,
    required TResult Function(SplashPageReadyEvent value) ready,
  }) {
    return initialize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SplashPageIniitalizeEvent value)? initialize,
    TResult? Function(SplashPageReadyEvent value)? ready,
  }) {
    return initialize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SplashPageIniitalizeEvent value)? initialize,
    TResult Function(SplashPageReadyEvent value)? ready,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize(this);
    }
    return orElse();
  }
}

abstract class SplashPageIniitalizeEvent implements SplashPageEvent {
  const factory SplashPageIniitalizeEvent() = _$SplashPageIniitalizeEventImpl;
}

/// @nodoc
abstract class _$$SplashPageReadyEventImplCopyWith<$Res> {
  factory _$$SplashPageReadyEventImplCopyWith(_$SplashPageReadyEventImpl value,
          $Res Function(_$SplashPageReadyEventImpl) then) =
      __$$SplashPageReadyEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SplashPageReadyEventImplCopyWithImpl<$Res>
    extends _$SplashPageEventCopyWithImpl<$Res, _$SplashPageReadyEventImpl>
    implements _$$SplashPageReadyEventImplCopyWith<$Res> {
  __$$SplashPageReadyEventImplCopyWithImpl(_$SplashPageReadyEventImpl _value,
      $Res Function(_$SplashPageReadyEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SplashPageReadyEventImpl implements SplashPageReadyEvent {
  const _$SplashPageReadyEventImpl();

  @override
  String toString() {
    return 'SplashPageEvent.ready()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SplashPageReadyEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function() ready,
  }) {
    return ready();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function()? ready,
  }) {
    return ready?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function()? ready,
    required TResult orElse(),
  }) {
    if (ready != null) {
      return ready();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SplashPageIniitalizeEvent value) initialize,
    required TResult Function(SplashPageReadyEvent value) ready,
  }) {
    return ready(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SplashPageIniitalizeEvent value)? initialize,
    TResult? Function(SplashPageReadyEvent value)? ready,
  }) {
    return ready?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SplashPageIniitalizeEvent value)? initialize,
    TResult Function(SplashPageReadyEvent value)? ready,
    required TResult orElse(),
  }) {
    if (ready != null) {
      return ready(this);
    }
    return orElse();
  }
}

abstract class SplashPageReadyEvent implements SplashPageEvent {
  const factory SplashPageReadyEvent() = _$SplashPageReadyEventImpl;
}

/// @nodoc
mixin _$SplashPageState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() ready,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? ready,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? ready,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SplashPageInitial value) initial,
    required TResult Function(SplashPageReady value) ready,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SplashPageInitial value)? initial,
    TResult? Function(SplashPageReady value)? ready,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SplashPageInitial value)? initial,
    TResult Function(SplashPageReady value)? ready,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SplashPageStateCopyWith<$Res> {
  factory $SplashPageStateCopyWith(
          SplashPageState value, $Res Function(SplashPageState) then) =
      _$SplashPageStateCopyWithImpl<$Res, SplashPageState>;
}

/// @nodoc
class _$SplashPageStateCopyWithImpl<$Res, $Val extends SplashPageState>
    implements $SplashPageStateCopyWith<$Res> {
  _$SplashPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SplashPageInitialImplCopyWith<$Res> {
  factory _$$SplashPageInitialImplCopyWith(_$SplashPageInitialImpl value,
          $Res Function(_$SplashPageInitialImpl) then) =
      __$$SplashPageInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SplashPageInitialImplCopyWithImpl<$Res>
    extends _$SplashPageStateCopyWithImpl<$Res, _$SplashPageInitialImpl>
    implements _$$SplashPageInitialImplCopyWith<$Res> {
  __$$SplashPageInitialImplCopyWithImpl(_$SplashPageInitialImpl _value,
      $Res Function(_$SplashPageInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SplashPageInitialImpl implements SplashPageInitial {
  const _$SplashPageInitialImpl();

  @override
  String toString() {
    return 'SplashPageState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SplashPageInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() ready,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? ready,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? ready,
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
    required TResult Function(SplashPageInitial value) initial,
    required TResult Function(SplashPageReady value) ready,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SplashPageInitial value)? initial,
    TResult? Function(SplashPageReady value)? ready,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SplashPageInitial value)? initial,
    TResult Function(SplashPageReady value)? ready,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class SplashPageInitial implements SplashPageState {
  const factory SplashPageInitial() = _$SplashPageInitialImpl;
}

/// @nodoc
abstract class _$$SplashPageReadyImplCopyWith<$Res> {
  factory _$$SplashPageReadyImplCopyWith(_$SplashPageReadyImpl value,
          $Res Function(_$SplashPageReadyImpl) then) =
      __$$SplashPageReadyImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SplashPageReadyImplCopyWithImpl<$Res>
    extends _$SplashPageStateCopyWithImpl<$Res, _$SplashPageReadyImpl>
    implements _$$SplashPageReadyImplCopyWith<$Res> {
  __$$SplashPageReadyImplCopyWithImpl(
      _$SplashPageReadyImpl _value, $Res Function(_$SplashPageReadyImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SplashPageReadyImpl implements SplashPageReady {
  const _$SplashPageReadyImpl();

  @override
  String toString() {
    return 'SplashPageState.ready()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SplashPageReadyImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() ready,
  }) {
    return ready();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? ready,
  }) {
    return ready?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? ready,
    required TResult orElse(),
  }) {
    if (ready != null) {
      return ready();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SplashPageInitial value) initial,
    required TResult Function(SplashPageReady value) ready,
  }) {
    return ready(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SplashPageInitial value)? initial,
    TResult? Function(SplashPageReady value)? ready,
  }) {
    return ready?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SplashPageInitial value)? initial,
    TResult Function(SplashPageReady value)? ready,
    required TResult orElse(),
  }) {
    if (ready != null) {
      return ready(this);
    }
    return orElse();
  }
}

abstract class SplashPageReady implements SplashPageState {
  const factory SplashPageReady() = _$SplashPageReadyImpl;
}
