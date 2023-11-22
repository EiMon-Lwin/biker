// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_state_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AppStateEvent {
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
    required TResult Function(AppInitializeEvent value) initialize,
    required TResult Function(AppReadyEvent value) ready,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppInitializeEvent value)? initialize,
    TResult? Function(AppReadyEvent value)? ready,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppInitializeEvent value)? initialize,
    TResult Function(AppReadyEvent value)? ready,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStateEventCopyWith<$Res> {
  factory $AppStateEventCopyWith(
          AppStateEvent value, $Res Function(AppStateEvent) then) =
      _$AppStateEventCopyWithImpl<$Res, AppStateEvent>;
}

/// @nodoc
class _$AppStateEventCopyWithImpl<$Res, $Val extends AppStateEvent>
    implements $AppStateEventCopyWith<$Res> {
  _$AppStateEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AppInitializeEventImplCopyWith<$Res> {
  factory _$$AppInitializeEventImplCopyWith(_$AppInitializeEventImpl value,
          $Res Function(_$AppInitializeEventImpl) then) =
      __$$AppInitializeEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AppInitializeEventImplCopyWithImpl<$Res>
    extends _$AppStateEventCopyWithImpl<$Res, _$AppInitializeEventImpl>
    implements _$$AppInitializeEventImplCopyWith<$Res> {
  __$$AppInitializeEventImplCopyWithImpl(_$AppInitializeEventImpl _value,
      $Res Function(_$AppInitializeEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AppInitializeEventImpl implements AppInitializeEvent {
  const _$AppInitializeEventImpl();

  @override
  String toString() {
    return 'AppStateEvent.initialize()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AppInitializeEventImpl);
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
    required TResult Function(AppInitializeEvent value) initialize,
    required TResult Function(AppReadyEvent value) ready,
  }) {
    return initialize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppInitializeEvent value)? initialize,
    TResult? Function(AppReadyEvent value)? ready,
  }) {
    return initialize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppInitializeEvent value)? initialize,
    TResult Function(AppReadyEvent value)? ready,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize(this);
    }
    return orElse();
  }
}

abstract class AppInitializeEvent implements AppStateEvent {
  const factory AppInitializeEvent() = _$AppInitializeEventImpl;
}

/// @nodoc
abstract class _$$AppReadyEventImplCopyWith<$Res> {
  factory _$$AppReadyEventImplCopyWith(
          _$AppReadyEventImpl value, $Res Function(_$AppReadyEventImpl) then) =
      __$$AppReadyEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AppReadyEventImplCopyWithImpl<$Res>
    extends _$AppStateEventCopyWithImpl<$Res, _$AppReadyEventImpl>
    implements _$$AppReadyEventImplCopyWith<$Res> {
  __$$AppReadyEventImplCopyWithImpl(
      _$AppReadyEventImpl _value, $Res Function(_$AppReadyEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AppReadyEventImpl implements AppReadyEvent {
  const _$AppReadyEventImpl();

  @override
  String toString() {
    return 'AppStateEvent.ready()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AppReadyEventImpl);
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
    required TResult Function(AppInitializeEvent value) initialize,
    required TResult Function(AppReadyEvent value) ready,
  }) {
    return ready(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppInitializeEvent value)? initialize,
    TResult? Function(AppReadyEvent value)? ready,
  }) {
    return ready?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppInitializeEvent value)? initialize,
    TResult Function(AppReadyEvent value)? ready,
    required TResult orElse(),
  }) {
    if (ready != null) {
      return ready(this);
    }
    return orElse();
  }
}

abstract class AppReadyEvent implements AppStateEvent {
  const factory AppReadyEvent() = _$AppReadyEventImpl;
}

/// @nodoc
mixin _$AppStateState {
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
    required TResult Function(AppStateInitial value) initial,
    required TResult Function(AppStateReady value) ready,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppStateInitial value)? initial,
    TResult? Function(AppStateReady value)? ready,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppStateInitial value)? initial,
    TResult Function(AppStateReady value)? ready,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStateStateCopyWith<$Res> {
  factory $AppStateStateCopyWith(
          AppStateState value, $Res Function(AppStateState) then) =
      _$AppStateStateCopyWithImpl<$Res, AppStateState>;
}

/// @nodoc
class _$AppStateStateCopyWithImpl<$Res, $Val extends AppStateState>
    implements $AppStateStateCopyWith<$Res> {
  _$AppStateStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AppStateInitialImplCopyWith<$Res> {
  factory _$$AppStateInitialImplCopyWith(_$AppStateInitialImpl value,
          $Res Function(_$AppStateInitialImpl) then) =
      __$$AppStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AppStateInitialImplCopyWithImpl<$Res>
    extends _$AppStateStateCopyWithImpl<$Res, _$AppStateInitialImpl>
    implements _$$AppStateInitialImplCopyWith<$Res> {
  __$$AppStateInitialImplCopyWithImpl(
      _$AppStateInitialImpl _value, $Res Function(_$AppStateInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AppStateInitialImpl implements AppStateInitial {
  const _$AppStateInitialImpl();

  @override
  String toString() {
    return 'AppStateState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AppStateInitialImpl);
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
    required TResult Function(AppStateInitial value) initial,
    required TResult Function(AppStateReady value) ready,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppStateInitial value)? initial,
    TResult? Function(AppStateReady value)? ready,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppStateInitial value)? initial,
    TResult Function(AppStateReady value)? ready,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class AppStateInitial implements AppStateState {
  const factory AppStateInitial() = _$AppStateInitialImpl;
}

/// @nodoc
abstract class _$$AppStateReadyImplCopyWith<$Res> {
  factory _$$AppStateReadyImplCopyWith(
          _$AppStateReadyImpl value, $Res Function(_$AppStateReadyImpl) then) =
      __$$AppStateReadyImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AppStateReadyImplCopyWithImpl<$Res>
    extends _$AppStateStateCopyWithImpl<$Res, _$AppStateReadyImpl>
    implements _$$AppStateReadyImplCopyWith<$Res> {
  __$$AppStateReadyImplCopyWithImpl(
      _$AppStateReadyImpl _value, $Res Function(_$AppStateReadyImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AppStateReadyImpl implements AppStateReady {
  const _$AppStateReadyImpl();

  @override
  String toString() {
    return 'AppStateState.ready()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AppStateReadyImpl);
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
    required TResult Function(AppStateInitial value) initial,
    required TResult Function(AppStateReady value) ready,
  }) {
    return ready(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppStateInitial value)? initial,
    TResult? Function(AppStateReady value)? ready,
  }) {
    return ready?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppStateInitial value)? initial,
    TResult Function(AppStateReady value)? ready,
    required TResult orElse(),
  }) {
    if (ready != null) {
      return ready(this);
    }
    return orElse();
  }
}

abstract class AppStateReady implements AppStateState {
  const factory AppStateReady() = _$AppStateReadyImpl;
}
