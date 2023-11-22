// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'schedule_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ScheduleEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadAllSchedules,
    required TResult Function() loadCurrentSchedules,
    required TResult Function() loadNextSchedules,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadAllSchedules,
    TResult? Function()? loadCurrentSchedules,
    TResult? Function()? loadNextSchedules,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadAllSchedules,
    TResult Function()? loadCurrentSchedules,
    TResult Function()? loadNextSchedules,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadAllSchedulesEvent value) loadAllSchedules,
    required TResult Function(LoadCurrentSchedulesEvent value)
        loadCurrentSchedules,
    required TResult Function(LoadNextSchedulesEvent value) loadNextSchedules,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadAllSchedulesEvent value)? loadAllSchedules,
    TResult? Function(LoadCurrentSchedulesEvent value)? loadCurrentSchedules,
    TResult? Function(LoadNextSchedulesEvent value)? loadNextSchedules,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadAllSchedulesEvent value)? loadAllSchedules,
    TResult Function(LoadCurrentSchedulesEvent value)? loadCurrentSchedules,
    TResult Function(LoadNextSchedulesEvent value)? loadNextSchedules,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduleEventCopyWith<$Res> {
  factory $ScheduleEventCopyWith(
          ScheduleEvent value, $Res Function(ScheduleEvent) then) =
      _$ScheduleEventCopyWithImpl<$Res, ScheduleEvent>;
}

/// @nodoc
class _$ScheduleEventCopyWithImpl<$Res, $Val extends ScheduleEvent>
    implements $ScheduleEventCopyWith<$Res> {
  _$ScheduleEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadAllSchedulesEventImplCopyWith<$Res> {
  factory _$$LoadAllSchedulesEventImplCopyWith(
          _$LoadAllSchedulesEventImpl value,
          $Res Function(_$LoadAllSchedulesEventImpl) then) =
      __$$LoadAllSchedulesEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadAllSchedulesEventImplCopyWithImpl<$Res>
    extends _$ScheduleEventCopyWithImpl<$Res, _$LoadAllSchedulesEventImpl>
    implements _$$LoadAllSchedulesEventImplCopyWith<$Res> {
  __$$LoadAllSchedulesEventImplCopyWithImpl(_$LoadAllSchedulesEventImpl _value,
      $Res Function(_$LoadAllSchedulesEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadAllSchedulesEventImpl implements LoadAllSchedulesEvent {
  const _$LoadAllSchedulesEventImpl();

  @override
  String toString() {
    return 'ScheduleEvent.loadAllSchedules()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadAllSchedulesEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadAllSchedules,
    required TResult Function() loadCurrentSchedules,
    required TResult Function() loadNextSchedules,
  }) {
    return loadAllSchedules();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadAllSchedules,
    TResult? Function()? loadCurrentSchedules,
    TResult? Function()? loadNextSchedules,
  }) {
    return loadAllSchedules?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadAllSchedules,
    TResult Function()? loadCurrentSchedules,
    TResult Function()? loadNextSchedules,
    required TResult orElse(),
  }) {
    if (loadAllSchedules != null) {
      return loadAllSchedules();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadAllSchedulesEvent value) loadAllSchedules,
    required TResult Function(LoadCurrentSchedulesEvent value)
        loadCurrentSchedules,
    required TResult Function(LoadNextSchedulesEvent value) loadNextSchedules,
  }) {
    return loadAllSchedules(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadAllSchedulesEvent value)? loadAllSchedules,
    TResult? Function(LoadCurrentSchedulesEvent value)? loadCurrentSchedules,
    TResult? Function(LoadNextSchedulesEvent value)? loadNextSchedules,
  }) {
    return loadAllSchedules?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadAllSchedulesEvent value)? loadAllSchedules,
    TResult Function(LoadCurrentSchedulesEvent value)? loadCurrentSchedules,
    TResult Function(LoadNextSchedulesEvent value)? loadNextSchedules,
    required TResult orElse(),
  }) {
    if (loadAllSchedules != null) {
      return loadAllSchedules(this);
    }
    return orElse();
  }
}

abstract class LoadAllSchedulesEvent implements ScheduleEvent {
  const factory LoadAllSchedulesEvent() = _$LoadAllSchedulesEventImpl;
}

/// @nodoc
abstract class _$$LoadCurrentSchedulesEventImplCopyWith<$Res> {
  factory _$$LoadCurrentSchedulesEventImplCopyWith(
          _$LoadCurrentSchedulesEventImpl value,
          $Res Function(_$LoadCurrentSchedulesEventImpl) then) =
      __$$LoadCurrentSchedulesEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadCurrentSchedulesEventImplCopyWithImpl<$Res>
    extends _$ScheduleEventCopyWithImpl<$Res, _$LoadCurrentSchedulesEventImpl>
    implements _$$LoadCurrentSchedulesEventImplCopyWith<$Res> {
  __$$LoadCurrentSchedulesEventImplCopyWithImpl(
      _$LoadCurrentSchedulesEventImpl _value,
      $Res Function(_$LoadCurrentSchedulesEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadCurrentSchedulesEventImpl implements LoadCurrentSchedulesEvent {
  const _$LoadCurrentSchedulesEventImpl();

  @override
  String toString() {
    return 'ScheduleEvent.loadCurrentSchedules()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadCurrentSchedulesEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadAllSchedules,
    required TResult Function() loadCurrentSchedules,
    required TResult Function() loadNextSchedules,
  }) {
    return loadCurrentSchedules();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadAllSchedules,
    TResult? Function()? loadCurrentSchedules,
    TResult? Function()? loadNextSchedules,
  }) {
    return loadCurrentSchedules?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadAllSchedules,
    TResult Function()? loadCurrentSchedules,
    TResult Function()? loadNextSchedules,
    required TResult orElse(),
  }) {
    if (loadCurrentSchedules != null) {
      return loadCurrentSchedules();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadAllSchedulesEvent value) loadAllSchedules,
    required TResult Function(LoadCurrentSchedulesEvent value)
        loadCurrentSchedules,
    required TResult Function(LoadNextSchedulesEvent value) loadNextSchedules,
  }) {
    return loadCurrentSchedules(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadAllSchedulesEvent value)? loadAllSchedules,
    TResult? Function(LoadCurrentSchedulesEvent value)? loadCurrentSchedules,
    TResult? Function(LoadNextSchedulesEvent value)? loadNextSchedules,
  }) {
    return loadCurrentSchedules?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadAllSchedulesEvent value)? loadAllSchedules,
    TResult Function(LoadCurrentSchedulesEvent value)? loadCurrentSchedules,
    TResult Function(LoadNextSchedulesEvent value)? loadNextSchedules,
    required TResult orElse(),
  }) {
    if (loadCurrentSchedules != null) {
      return loadCurrentSchedules(this);
    }
    return orElse();
  }
}

abstract class LoadCurrentSchedulesEvent implements ScheduleEvent {
  const factory LoadCurrentSchedulesEvent() = _$LoadCurrentSchedulesEventImpl;
}

/// @nodoc
abstract class _$$LoadNextSchedulesEventImplCopyWith<$Res> {
  factory _$$LoadNextSchedulesEventImplCopyWith(
          _$LoadNextSchedulesEventImpl value,
          $Res Function(_$LoadNextSchedulesEventImpl) then) =
      __$$LoadNextSchedulesEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadNextSchedulesEventImplCopyWithImpl<$Res>
    extends _$ScheduleEventCopyWithImpl<$Res, _$LoadNextSchedulesEventImpl>
    implements _$$LoadNextSchedulesEventImplCopyWith<$Res> {
  __$$LoadNextSchedulesEventImplCopyWithImpl(
      _$LoadNextSchedulesEventImpl _value,
      $Res Function(_$LoadNextSchedulesEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadNextSchedulesEventImpl implements LoadNextSchedulesEvent {
  const _$LoadNextSchedulesEventImpl();

  @override
  String toString() {
    return 'ScheduleEvent.loadNextSchedules()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadNextSchedulesEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadAllSchedules,
    required TResult Function() loadCurrentSchedules,
    required TResult Function() loadNextSchedules,
  }) {
    return loadNextSchedules();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadAllSchedules,
    TResult? Function()? loadCurrentSchedules,
    TResult? Function()? loadNextSchedules,
  }) {
    return loadNextSchedules?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadAllSchedules,
    TResult Function()? loadCurrentSchedules,
    TResult Function()? loadNextSchedules,
    required TResult orElse(),
  }) {
    if (loadNextSchedules != null) {
      return loadNextSchedules();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadAllSchedulesEvent value) loadAllSchedules,
    required TResult Function(LoadCurrentSchedulesEvent value)
        loadCurrentSchedules,
    required TResult Function(LoadNextSchedulesEvent value) loadNextSchedules,
  }) {
    return loadNextSchedules(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadAllSchedulesEvent value)? loadAllSchedules,
    TResult? Function(LoadCurrentSchedulesEvent value)? loadCurrentSchedules,
    TResult? Function(LoadNextSchedulesEvent value)? loadNextSchedules,
  }) {
    return loadNextSchedules?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadAllSchedulesEvent value)? loadAllSchedules,
    TResult Function(LoadCurrentSchedulesEvent value)? loadCurrentSchedules,
    TResult Function(LoadNextSchedulesEvent value)? loadNextSchedules,
    required TResult orElse(),
  }) {
    if (loadNextSchedules != null) {
      return loadNextSchedules(this);
    }
    return orElse();
  }
}

abstract class LoadNextSchedulesEvent implements ScheduleEvent {
  const factory LoadNextSchedulesEvent() = _$LoadNextSchedulesEventImpl;
}

/// @nodoc
mixin _$ScheduleState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<ScheduleEntity> currentSchedules,
            List<ScheduleEntity> nextSchedules)
        ready,
    required TResult Function() error,
    required TResult Function() networkError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<ScheduleEntity> currentSchedules,
            List<ScheduleEntity> nextSchedules)?
        ready,
    TResult? Function()? error,
    TResult? Function()? networkError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<ScheduleEntity> currentSchedules,
            List<ScheduleEntity> nextSchedules)?
        ready,
    TResult Function()? error,
    TResult Function()? networkError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ScheduleStateInitial value) initial,
    required TResult Function(ScheduleStateReady value) ready,
    required TResult Function(ScheduleStateError value) error,
    required TResult Function(ScheduleStateNetworkError value) networkError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ScheduleStateInitial value)? initial,
    TResult? Function(ScheduleStateReady value)? ready,
    TResult? Function(ScheduleStateError value)? error,
    TResult? Function(ScheduleStateNetworkError value)? networkError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ScheduleStateInitial value)? initial,
    TResult Function(ScheduleStateReady value)? ready,
    TResult Function(ScheduleStateError value)? error,
    TResult Function(ScheduleStateNetworkError value)? networkError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduleStateCopyWith<$Res> {
  factory $ScheduleStateCopyWith(
          ScheduleState value, $Res Function(ScheduleState) then) =
      _$ScheduleStateCopyWithImpl<$Res, ScheduleState>;
}

/// @nodoc
class _$ScheduleStateCopyWithImpl<$Res, $Val extends ScheduleState>
    implements $ScheduleStateCopyWith<$Res> {
  _$ScheduleStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ScheduleStateInitialImplCopyWith<$Res> {
  factory _$$ScheduleStateInitialImplCopyWith(_$ScheduleStateInitialImpl value,
          $Res Function(_$ScheduleStateInitialImpl) then) =
      __$$ScheduleStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ScheduleStateInitialImplCopyWithImpl<$Res>
    extends _$ScheduleStateCopyWithImpl<$Res, _$ScheduleStateInitialImpl>
    implements _$$ScheduleStateInitialImplCopyWith<$Res> {
  __$$ScheduleStateInitialImplCopyWithImpl(_$ScheduleStateInitialImpl _value,
      $Res Function(_$ScheduleStateInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ScheduleStateInitialImpl implements ScheduleStateInitial {
  const _$ScheduleStateInitialImpl();

  @override
  String toString() {
    return 'ScheduleState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScheduleStateInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<ScheduleEntity> currentSchedules,
            List<ScheduleEntity> nextSchedules)
        ready,
    required TResult Function() error,
    required TResult Function() networkError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<ScheduleEntity> currentSchedules,
            List<ScheduleEntity> nextSchedules)?
        ready,
    TResult? Function()? error,
    TResult? Function()? networkError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<ScheduleEntity> currentSchedules,
            List<ScheduleEntity> nextSchedules)?
        ready,
    TResult Function()? error,
    TResult Function()? networkError,
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
    required TResult Function(ScheduleStateInitial value) initial,
    required TResult Function(ScheduleStateReady value) ready,
    required TResult Function(ScheduleStateError value) error,
    required TResult Function(ScheduleStateNetworkError value) networkError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ScheduleStateInitial value)? initial,
    TResult? Function(ScheduleStateReady value)? ready,
    TResult? Function(ScheduleStateError value)? error,
    TResult? Function(ScheduleStateNetworkError value)? networkError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ScheduleStateInitial value)? initial,
    TResult Function(ScheduleStateReady value)? ready,
    TResult Function(ScheduleStateError value)? error,
    TResult Function(ScheduleStateNetworkError value)? networkError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class ScheduleStateInitial implements ScheduleState {
  const factory ScheduleStateInitial() = _$ScheduleStateInitialImpl;
}

/// @nodoc
abstract class _$$ScheduleStateReadyImplCopyWith<$Res> {
  factory _$$ScheduleStateReadyImplCopyWith(_$ScheduleStateReadyImpl value,
          $Res Function(_$ScheduleStateReadyImpl) then) =
      __$$ScheduleStateReadyImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<ScheduleEntity> currentSchedules,
      List<ScheduleEntity> nextSchedules});
}

/// @nodoc
class __$$ScheduleStateReadyImplCopyWithImpl<$Res>
    extends _$ScheduleStateCopyWithImpl<$Res, _$ScheduleStateReadyImpl>
    implements _$$ScheduleStateReadyImplCopyWith<$Res> {
  __$$ScheduleStateReadyImplCopyWithImpl(_$ScheduleStateReadyImpl _value,
      $Res Function(_$ScheduleStateReadyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentSchedules = null,
    Object? nextSchedules = null,
  }) {
    return _then(_$ScheduleStateReadyImpl(
      currentSchedules: null == currentSchedules
          ? _value._currentSchedules
          : currentSchedules // ignore: cast_nullable_to_non_nullable
              as List<ScheduleEntity>,
      nextSchedules: null == nextSchedules
          ? _value._nextSchedules
          : nextSchedules // ignore: cast_nullable_to_non_nullable
              as List<ScheduleEntity>,
    ));
  }
}

/// @nodoc

class _$ScheduleStateReadyImpl implements ScheduleStateReady {
  const _$ScheduleStateReadyImpl(
      {required final List<ScheduleEntity> currentSchedules,
      required final List<ScheduleEntity> nextSchedules})
      : _currentSchedules = currentSchedules,
        _nextSchedules = nextSchedules;

  final List<ScheduleEntity> _currentSchedules;
  @override
  List<ScheduleEntity> get currentSchedules {
    if (_currentSchedules is EqualUnmodifiableListView)
      return _currentSchedules;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_currentSchedules);
  }

  final List<ScheduleEntity> _nextSchedules;
  @override
  List<ScheduleEntity> get nextSchedules {
    if (_nextSchedules is EqualUnmodifiableListView) return _nextSchedules;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_nextSchedules);
  }

  @override
  String toString() {
    return 'ScheduleState.ready(currentSchedules: $currentSchedules, nextSchedules: $nextSchedules)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScheduleStateReadyImpl &&
            const DeepCollectionEquality()
                .equals(other._currentSchedules, _currentSchedules) &&
            const DeepCollectionEquality()
                .equals(other._nextSchedules, _nextSchedules));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_currentSchedules),
      const DeepCollectionEquality().hash(_nextSchedules));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ScheduleStateReadyImplCopyWith<_$ScheduleStateReadyImpl> get copyWith =>
      __$$ScheduleStateReadyImplCopyWithImpl<_$ScheduleStateReadyImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<ScheduleEntity> currentSchedules,
            List<ScheduleEntity> nextSchedules)
        ready,
    required TResult Function() error,
    required TResult Function() networkError,
  }) {
    return ready(currentSchedules, nextSchedules);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<ScheduleEntity> currentSchedules,
            List<ScheduleEntity> nextSchedules)?
        ready,
    TResult? Function()? error,
    TResult? Function()? networkError,
  }) {
    return ready?.call(currentSchedules, nextSchedules);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<ScheduleEntity> currentSchedules,
            List<ScheduleEntity> nextSchedules)?
        ready,
    TResult Function()? error,
    TResult Function()? networkError,
    required TResult orElse(),
  }) {
    if (ready != null) {
      return ready(currentSchedules, nextSchedules);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ScheduleStateInitial value) initial,
    required TResult Function(ScheduleStateReady value) ready,
    required TResult Function(ScheduleStateError value) error,
    required TResult Function(ScheduleStateNetworkError value) networkError,
  }) {
    return ready(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ScheduleStateInitial value)? initial,
    TResult? Function(ScheduleStateReady value)? ready,
    TResult? Function(ScheduleStateError value)? error,
    TResult? Function(ScheduleStateNetworkError value)? networkError,
  }) {
    return ready?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ScheduleStateInitial value)? initial,
    TResult Function(ScheduleStateReady value)? ready,
    TResult Function(ScheduleStateError value)? error,
    TResult Function(ScheduleStateNetworkError value)? networkError,
    required TResult orElse(),
  }) {
    if (ready != null) {
      return ready(this);
    }
    return orElse();
  }
}

abstract class ScheduleStateReady implements ScheduleState {
  const factory ScheduleStateReady(
          {required final List<ScheduleEntity> currentSchedules,
          required final List<ScheduleEntity> nextSchedules}) =
      _$ScheduleStateReadyImpl;

  List<ScheduleEntity> get currentSchedules;
  List<ScheduleEntity> get nextSchedules;
  @JsonKey(ignore: true)
  _$$ScheduleStateReadyImplCopyWith<_$ScheduleStateReadyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ScheduleStateErrorImplCopyWith<$Res> {
  factory _$$ScheduleStateErrorImplCopyWith(_$ScheduleStateErrorImpl value,
          $Res Function(_$ScheduleStateErrorImpl) then) =
      __$$ScheduleStateErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ScheduleStateErrorImplCopyWithImpl<$Res>
    extends _$ScheduleStateCopyWithImpl<$Res, _$ScheduleStateErrorImpl>
    implements _$$ScheduleStateErrorImplCopyWith<$Res> {
  __$$ScheduleStateErrorImplCopyWithImpl(_$ScheduleStateErrorImpl _value,
      $Res Function(_$ScheduleStateErrorImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ScheduleStateErrorImpl implements ScheduleStateError {
  const _$ScheduleStateErrorImpl();

  @override
  String toString() {
    return 'ScheduleState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ScheduleStateErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<ScheduleEntity> currentSchedules,
            List<ScheduleEntity> nextSchedules)
        ready,
    required TResult Function() error,
    required TResult Function() networkError,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<ScheduleEntity> currentSchedules,
            List<ScheduleEntity> nextSchedules)?
        ready,
    TResult? Function()? error,
    TResult? Function()? networkError,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<ScheduleEntity> currentSchedules,
            List<ScheduleEntity> nextSchedules)?
        ready,
    TResult Function()? error,
    TResult Function()? networkError,
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
    required TResult Function(ScheduleStateInitial value) initial,
    required TResult Function(ScheduleStateReady value) ready,
    required TResult Function(ScheduleStateError value) error,
    required TResult Function(ScheduleStateNetworkError value) networkError,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ScheduleStateInitial value)? initial,
    TResult? Function(ScheduleStateReady value)? ready,
    TResult? Function(ScheduleStateError value)? error,
    TResult? Function(ScheduleStateNetworkError value)? networkError,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ScheduleStateInitial value)? initial,
    TResult Function(ScheduleStateReady value)? ready,
    TResult Function(ScheduleStateError value)? error,
    TResult Function(ScheduleStateNetworkError value)? networkError,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ScheduleStateError implements ScheduleState {
  const factory ScheduleStateError() = _$ScheduleStateErrorImpl;
}

/// @nodoc
abstract class _$$ScheduleStateNetworkErrorImplCopyWith<$Res> {
  factory _$$ScheduleStateNetworkErrorImplCopyWith(
          _$ScheduleStateNetworkErrorImpl value,
          $Res Function(_$ScheduleStateNetworkErrorImpl) then) =
      __$$ScheduleStateNetworkErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ScheduleStateNetworkErrorImplCopyWithImpl<$Res>
    extends _$ScheduleStateCopyWithImpl<$Res, _$ScheduleStateNetworkErrorImpl>
    implements _$$ScheduleStateNetworkErrorImplCopyWith<$Res> {
  __$$ScheduleStateNetworkErrorImplCopyWithImpl(
      _$ScheduleStateNetworkErrorImpl _value,
      $Res Function(_$ScheduleStateNetworkErrorImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ScheduleStateNetworkErrorImpl implements ScheduleStateNetworkError {
  const _$ScheduleStateNetworkErrorImpl();

  @override
  String toString() {
    return 'ScheduleState.networkError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScheduleStateNetworkErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<ScheduleEntity> currentSchedules,
            List<ScheduleEntity> nextSchedules)
        ready,
    required TResult Function() error,
    required TResult Function() networkError,
  }) {
    return networkError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<ScheduleEntity> currentSchedules,
            List<ScheduleEntity> nextSchedules)?
        ready,
    TResult? Function()? error,
    TResult? Function()? networkError,
  }) {
    return networkError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<ScheduleEntity> currentSchedules,
            List<ScheduleEntity> nextSchedules)?
        ready,
    TResult Function()? error,
    TResult Function()? networkError,
    required TResult orElse(),
  }) {
    if (networkError != null) {
      return networkError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ScheduleStateInitial value) initial,
    required TResult Function(ScheduleStateReady value) ready,
    required TResult Function(ScheduleStateError value) error,
    required TResult Function(ScheduleStateNetworkError value) networkError,
  }) {
    return networkError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ScheduleStateInitial value)? initial,
    TResult? Function(ScheduleStateReady value)? ready,
    TResult? Function(ScheduleStateError value)? error,
    TResult? Function(ScheduleStateNetworkError value)? networkError,
  }) {
    return networkError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ScheduleStateInitial value)? initial,
    TResult Function(ScheduleStateReady value)? ready,
    TResult Function(ScheduleStateError value)? error,
    TResult Function(ScheduleStateNetworkError value)? networkError,
    required TResult orElse(),
  }) {
    if (networkError != null) {
      return networkError(this);
    }
    return orElse();
  }
}

abstract class ScheduleStateNetworkError implements ScheduleState {
  const factory ScheduleStateNetworkError() = _$ScheduleStateNetworkErrorImpl;
}
