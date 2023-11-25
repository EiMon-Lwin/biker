// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'schedule_check_in_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ScheduleCheckInEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String filePath) checkIn,
    required TResult Function(String scheduleId) checkOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String filePath)? checkIn,
    TResult? Function(String scheduleId)? checkOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String filePath)? checkIn,
    TResult Function(String scheduleId)? checkOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckIn value) checkIn,
    required TResult Function(_CheckOut value) checkOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckIn value)? checkIn,
    TResult? Function(_CheckOut value)? checkOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckIn value)? checkIn,
    TResult Function(_CheckOut value)? checkOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduleCheckInEventCopyWith<$Res> {
  factory $ScheduleCheckInEventCopyWith(ScheduleCheckInEvent value,
          $Res Function(ScheduleCheckInEvent) then) =
      _$ScheduleCheckInEventCopyWithImpl<$Res, ScheduleCheckInEvent>;
}

/// @nodoc
class _$ScheduleCheckInEventCopyWithImpl<$Res,
        $Val extends ScheduleCheckInEvent>
    implements $ScheduleCheckInEventCopyWith<$Res> {
  _$ScheduleCheckInEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CheckInImplCopyWith<$Res> {
  factory _$$CheckInImplCopyWith(
          _$CheckInImpl value, $Res Function(_$CheckInImpl) then) =
      __$$CheckInImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String filePath});
}

/// @nodoc
class __$$CheckInImplCopyWithImpl<$Res>
    extends _$ScheduleCheckInEventCopyWithImpl<$Res, _$CheckInImpl>
    implements _$$CheckInImplCopyWith<$Res> {
  __$$CheckInImplCopyWithImpl(
      _$CheckInImpl _value, $Res Function(_$CheckInImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filePath = null,
  }) {
    return _then(_$CheckInImpl(
      null == filePath
          ? _value.filePath
          : filePath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CheckInImpl implements _CheckIn {
  const _$CheckInImpl(this.filePath);

  @override
  final String filePath;

  @override
  String toString() {
    return 'ScheduleCheckInEvent.checkIn(filePath: $filePath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckInImpl &&
            (identical(other.filePath, filePath) ||
                other.filePath == filePath));
  }

  @override
  int get hashCode => Object.hash(runtimeType, filePath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckInImplCopyWith<_$CheckInImpl> get copyWith =>
      __$$CheckInImplCopyWithImpl<_$CheckInImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String filePath) checkIn,
    required TResult Function(String scheduleId) checkOut,
  }) {
    return checkIn(filePath);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String filePath)? checkIn,
    TResult? Function(String scheduleId)? checkOut,
  }) {
    return checkIn?.call(filePath);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String filePath)? checkIn,
    TResult Function(String scheduleId)? checkOut,
    required TResult orElse(),
  }) {
    if (checkIn != null) {
      return checkIn(filePath);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckIn value) checkIn,
    required TResult Function(_CheckOut value) checkOut,
  }) {
    return checkIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckIn value)? checkIn,
    TResult? Function(_CheckOut value)? checkOut,
  }) {
    return checkIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckIn value)? checkIn,
    TResult Function(_CheckOut value)? checkOut,
    required TResult orElse(),
  }) {
    if (checkIn != null) {
      return checkIn(this);
    }
    return orElse();
  }
}

abstract class _CheckIn implements ScheduleCheckInEvent {
  const factory _CheckIn(final String filePath) = _$CheckInImpl;

  String get filePath;
  @JsonKey(ignore: true)
  _$$CheckInImplCopyWith<_$CheckInImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CheckOutImplCopyWith<$Res> {
  factory _$$CheckOutImplCopyWith(
          _$CheckOutImpl value, $Res Function(_$CheckOutImpl) then) =
      __$$CheckOutImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String scheduleId});
}

/// @nodoc
class __$$CheckOutImplCopyWithImpl<$Res>
    extends _$ScheduleCheckInEventCopyWithImpl<$Res, _$CheckOutImpl>
    implements _$$CheckOutImplCopyWith<$Res> {
  __$$CheckOutImplCopyWithImpl(
      _$CheckOutImpl _value, $Res Function(_$CheckOutImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? scheduleId = null,
  }) {
    return _then(_$CheckOutImpl(
      null == scheduleId
          ? _value.scheduleId
          : scheduleId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CheckOutImpl implements _CheckOut {
  const _$CheckOutImpl(this.scheduleId);

  @override
  final String scheduleId;

  @override
  String toString() {
    return 'ScheduleCheckInEvent.checkOut(scheduleId: $scheduleId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckOutImpl &&
            (identical(other.scheduleId, scheduleId) ||
                other.scheduleId == scheduleId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, scheduleId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckOutImplCopyWith<_$CheckOutImpl> get copyWith =>
      __$$CheckOutImplCopyWithImpl<_$CheckOutImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String filePath) checkIn,
    required TResult Function(String scheduleId) checkOut,
  }) {
    return checkOut(scheduleId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String filePath)? checkIn,
    TResult? Function(String scheduleId)? checkOut,
  }) {
    return checkOut?.call(scheduleId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String filePath)? checkIn,
    TResult Function(String scheduleId)? checkOut,
    required TResult orElse(),
  }) {
    if (checkOut != null) {
      return checkOut(scheduleId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckIn value) checkIn,
    required TResult Function(_CheckOut value) checkOut,
  }) {
    return checkOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckIn value)? checkIn,
    TResult? Function(_CheckOut value)? checkOut,
  }) {
    return checkOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckIn value)? checkIn,
    TResult Function(_CheckOut value)? checkOut,
    required TResult orElse(),
  }) {
    if (checkOut != null) {
      return checkOut(this);
    }
    return orElse();
  }
}

abstract class _CheckOut implements ScheduleCheckInEvent {
  const factory _CheckOut(final String scheduleId) = _$CheckOutImpl;

  String get scheduleId;
  @JsonKey(ignore: true)
  _$$CheckOutImplCopyWith<_$CheckOutImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ScheduleCheckInState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() checkedIn,
    required TResult Function() checkingIn,
    required TResult Function() checkInError,
    required TResult Function() checkedOut,
    required TResult Function() checkingOut,
    required TResult Function() checkOutError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? checkedIn,
    TResult? Function()? checkingIn,
    TResult? Function()? checkInError,
    TResult? Function()? checkedOut,
    TResult? Function()? checkingOut,
    TResult? Function()? checkOutError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? checkedIn,
    TResult Function()? checkingIn,
    TResult Function()? checkInError,
    TResult Function()? checkedOut,
    TResult Function()? checkingOut,
    TResult Function()? checkOutError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_CheckedIn value) checkedIn,
    required TResult Function(_CheckingIn value) checkingIn,
    required TResult Function(_CheckInError value) checkInError,
    required TResult Function(_CheckedOut value) checkedOut,
    required TResult Function(_CheckingOut value) checkingOut,
    required TResult Function(_CheckOutError value) checkOutError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_CheckedIn value)? checkedIn,
    TResult? Function(_CheckingIn value)? checkingIn,
    TResult? Function(_CheckInError value)? checkInError,
    TResult? Function(_CheckedOut value)? checkedOut,
    TResult? Function(_CheckingOut value)? checkingOut,
    TResult? Function(_CheckOutError value)? checkOutError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CheckedIn value)? checkedIn,
    TResult Function(_CheckingIn value)? checkingIn,
    TResult Function(_CheckInError value)? checkInError,
    TResult Function(_CheckedOut value)? checkedOut,
    TResult Function(_CheckingOut value)? checkingOut,
    TResult Function(_CheckOutError value)? checkOutError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduleCheckInStateCopyWith<$Res> {
  factory $ScheduleCheckInStateCopyWith(ScheduleCheckInState value,
          $Res Function(ScheduleCheckInState) then) =
      _$ScheduleCheckInStateCopyWithImpl<$Res, ScheduleCheckInState>;
}

/// @nodoc
class _$ScheduleCheckInStateCopyWithImpl<$Res,
        $Val extends ScheduleCheckInState>
    implements $ScheduleCheckInStateCopyWith<$Res> {
  _$ScheduleCheckInStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$ScheduleCheckInStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'ScheduleCheckInState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() checkedIn,
    required TResult Function() checkingIn,
    required TResult Function() checkInError,
    required TResult Function() checkedOut,
    required TResult Function() checkingOut,
    required TResult Function() checkOutError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? checkedIn,
    TResult? Function()? checkingIn,
    TResult? Function()? checkInError,
    TResult? Function()? checkedOut,
    TResult? Function()? checkingOut,
    TResult? Function()? checkOutError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? checkedIn,
    TResult Function()? checkingIn,
    TResult Function()? checkInError,
    TResult Function()? checkedOut,
    TResult Function()? checkingOut,
    TResult Function()? checkOutError,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_CheckedIn value) checkedIn,
    required TResult Function(_CheckingIn value) checkingIn,
    required TResult Function(_CheckInError value) checkInError,
    required TResult Function(_CheckedOut value) checkedOut,
    required TResult Function(_CheckingOut value) checkingOut,
    required TResult Function(_CheckOutError value) checkOutError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_CheckedIn value)? checkedIn,
    TResult? Function(_CheckingIn value)? checkingIn,
    TResult? Function(_CheckInError value)? checkInError,
    TResult? Function(_CheckedOut value)? checkedOut,
    TResult? Function(_CheckingOut value)? checkingOut,
    TResult? Function(_CheckOutError value)? checkOutError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CheckedIn value)? checkedIn,
    TResult Function(_CheckingIn value)? checkingIn,
    TResult Function(_CheckInError value)? checkInError,
    TResult Function(_CheckedOut value)? checkedOut,
    TResult Function(_CheckingOut value)? checkingOut,
    TResult Function(_CheckOutError value)? checkOutError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ScheduleCheckInState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$CheckedInImplCopyWith<$Res> {
  factory _$$CheckedInImplCopyWith(
          _$CheckedInImpl value, $Res Function(_$CheckedInImpl) then) =
      __$$CheckedInImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CheckedInImplCopyWithImpl<$Res>
    extends _$ScheduleCheckInStateCopyWithImpl<$Res, _$CheckedInImpl>
    implements _$$CheckedInImplCopyWith<$Res> {
  __$$CheckedInImplCopyWithImpl(
      _$CheckedInImpl _value, $Res Function(_$CheckedInImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CheckedInImpl implements _CheckedIn {
  const _$CheckedInImpl();

  @override
  String toString() {
    return 'ScheduleCheckInState.checkedIn()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CheckedInImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() checkedIn,
    required TResult Function() checkingIn,
    required TResult Function() checkInError,
    required TResult Function() checkedOut,
    required TResult Function() checkingOut,
    required TResult Function() checkOutError,
  }) {
    return checkedIn();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? checkedIn,
    TResult? Function()? checkingIn,
    TResult? Function()? checkInError,
    TResult? Function()? checkedOut,
    TResult? Function()? checkingOut,
    TResult? Function()? checkOutError,
  }) {
    return checkedIn?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? checkedIn,
    TResult Function()? checkingIn,
    TResult Function()? checkInError,
    TResult Function()? checkedOut,
    TResult Function()? checkingOut,
    TResult Function()? checkOutError,
    required TResult orElse(),
  }) {
    if (checkedIn != null) {
      return checkedIn();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_CheckedIn value) checkedIn,
    required TResult Function(_CheckingIn value) checkingIn,
    required TResult Function(_CheckInError value) checkInError,
    required TResult Function(_CheckedOut value) checkedOut,
    required TResult Function(_CheckingOut value) checkingOut,
    required TResult Function(_CheckOutError value) checkOutError,
  }) {
    return checkedIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_CheckedIn value)? checkedIn,
    TResult? Function(_CheckingIn value)? checkingIn,
    TResult? Function(_CheckInError value)? checkInError,
    TResult? Function(_CheckedOut value)? checkedOut,
    TResult? Function(_CheckingOut value)? checkingOut,
    TResult? Function(_CheckOutError value)? checkOutError,
  }) {
    return checkedIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CheckedIn value)? checkedIn,
    TResult Function(_CheckingIn value)? checkingIn,
    TResult Function(_CheckInError value)? checkInError,
    TResult Function(_CheckedOut value)? checkedOut,
    TResult Function(_CheckingOut value)? checkingOut,
    TResult Function(_CheckOutError value)? checkOutError,
    required TResult orElse(),
  }) {
    if (checkedIn != null) {
      return checkedIn(this);
    }
    return orElse();
  }
}

abstract class _CheckedIn implements ScheduleCheckInState {
  const factory _CheckedIn() = _$CheckedInImpl;
}

/// @nodoc
abstract class _$$CheckingInImplCopyWith<$Res> {
  factory _$$CheckingInImplCopyWith(
          _$CheckingInImpl value, $Res Function(_$CheckingInImpl) then) =
      __$$CheckingInImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CheckingInImplCopyWithImpl<$Res>
    extends _$ScheduleCheckInStateCopyWithImpl<$Res, _$CheckingInImpl>
    implements _$$CheckingInImplCopyWith<$Res> {
  __$$CheckingInImplCopyWithImpl(
      _$CheckingInImpl _value, $Res Function(_$CheckingInImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CheckingInImpl implements _CheckingIn {
  const _$CheckingInImpl();

  @override
  String toString() {
    return 'ScheduleCheckInState.checkingIn()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CheckingInImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() checkedIn,
    required TResult Function() checkingIn,
    required TResult Function() checkInError,
    required TResult Function() checkedOut,
    required TResult Function() checkingOut,
    required TResult Function() checkOutError,
  }) {
    return checkingIn();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? checkedIn,
    TResult? Function()? checkingIn,
    TResult? Function()? checkInError,
    TResult? Function()? checkedOut,
    TResult? Function()? checkingOut,
    TResult? Function()? checkOutError,
  }) {
    return checkingIn?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? checkedIn,
    TResult Function()? checkingIn,
    TResult Function()? checkInError,
    TResult Function()? checkedOut,
    TResult Function()? checkingOut,
    TResult Function()? checkOutError,
    required TResult orElse(),
  }) {
    if (checkingIn != null) {
      return checkingIn();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_CheckedIn value) checkedIn,
    required TResult Function(_CheckingIn value) checkingIn,
    required TResult Function(_CheckInError value) checkInError,
    required TResult Function(_CheckedOut value) checkedOut,
    required TResult Function(_CheckingOut value) checkingOut,
    required TResult Function(_CheckOutError value) checkOutError,
  }) {
    return checkingIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_CheckedIn value)? checkedIn,
    TResult? Function(_CheckingIn value)? checkingIn,
    TResult? Function(_CheckInError value)? checkInError,
    TResult? Function(_CheckedOut value)? checkedOut,
    TResult? Function(_CheckingOut value)? checkingOut,
    TResult? Function(_CheckOutError value)? checkOutError,
  }) {
    return checkingIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CheckedIn value)? checkedIn,
    TResult Function(_CheckingIn value)? checkingIn,
    TResult Function(_CheckInError value)? checkInError,
    TResult Function(_CheckedOut value)? checkedOut,
    TResult Function(_CheckingOut value)? checkingOut,
    TResult Function(_CheckOutError value)? checkOutError,
    required TResult orElse(),
  }) {
    if (checkingIn != null) {
      return checkingIn(this);
    }
    return orElse();
  }
}

abstract class _CheckingIn implements ScheduleCheckInState {
  const factory _CheckingIn() = _$CheckingInImpl;
}

/// @nodoc
abstract class _$$CheckInErrorImplCopyWith<$Res> {
  factory _$$CheckInErrorImplCopyWith(
          _$CheckInErrorImpl value, $Res Function(_$CheckInErrorImpl) then) =
      __$$CheckInErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CheckInErrorImplCopyWithImpl<$Res>
    extends _$ScheduleCheckInStateCopyWithImpl<$Res, _$CheckInErrorImpl>
    implements _$$CheckInErrorImplCopyWith<$Res> {
  __$$CheckInErrorImplCopyWithImpl(
      _$CheckInErrorImpl _value, $Res Function(_$CheckInErrorImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CheckInErrorImpl implements _CheckInError {
  const _$CheckInErrorImpl();

  @override
  String toString() {
    return 'ScheduleCheckInState.checkInError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CheckInErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() checkedIn,
    required TResult Function() checkingIn,
    required TResult Function() checkInError,
    required TResult Function() checkedOut,
    required TResult Function() checkingOut,
    required TResult Function() checkOutError,
  }) {
    return checkInError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? checkedIn,
    TResult? Function()? checkingIn,
    TResult? Function()? checkInError,
    TResult? Function()? checkedOut,
    TResult? Function()? checkingOut,
    TResult? Function()? checkOutError,
  }) {
    return checkInError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? checkedIn,
    TResult Function()? checkingIn,
    TResult Function()? checkInError,
    TResult Function()? checkedOut,
    TResult Function()? checkingOut,
    TResult Function()? checkOutError,
    required TResult orElse(),
  }) {
    if (checkInError != null) {
      return checkInError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_CheckedIn value) checkedIn,
    required TResult Function(_CheckingIn value) checkingIn,
    required TResult Function(_CheckInError value) checkInError,
    required TResult Function(_CheckedOut value) checkedOut,
    required TResult Function(_CheckingOut value) checkingOut,
    required TResult Function(_CheckOutError value) checkOutError,
  }) {
    return checkInError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_CheckedIn value)? checkedIn,
    TResult? Function(_CheckingIn value)? checkingIn,
    TResult? Function(_CheckInError value)? checkInError,
    TResult? Function(_CheckedOut value)? checkedOut,
    TResult? Function(_CheckingOut value)? checkingOut,
    TResult? Function(_CheckOutError value)? checkOutError,
  }) {
    return checkInError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CheckedIn value)? checkedIn,
    TResult Function(_CheckingIn value)? checkingIn,
    TResult Function(_CheckInError value)? checkInError,
    TResult Function(_CheckedOut value)? checkedOut,
    TResult Function(_CheckingOut value)? checkingOut,
    TResult Function(_CheckOutError value)? checkOutError,
    required TResult orElse(),
  }) {
    if (checkInError != null) {
      return checkInError(this);
    }
    return orElse();
  }
}

abstract class _CheckInError implements ScheduleCheckInState {
  const factory _CheckInError() = _$CheckInErrorImpl;
}

/// @nodoc
abstract class _$$CheckedOutImplCopyWith<$Res> {
  factory _$$CheckedOutImplCopyWith(
          _$CheckedOutImpl value, $Res Function(_$CheckedOutImpl) then) =
      __$$CheckedOutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CheckedOutImplCopyWithImpl<$Res>
    extends _$ScheduleCheckInStateCopyWithImpl<$Res, _$CheckedOutImpl>
    implements _$$CheckedOutImplCopyWith<$Res> {
  __$$CheckedOutImplCopyWithImpl(
      _$CheckedOutImpl _value, $Res Function(_$CheckedOutImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CheckedOutImpl implements _CheckedOut {
  const _$CheckedOutImpl();

  @override
  String toString() {
    return 'ScheduleCheckInState.checkedOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CheckedOutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() checkedIn,
    required TResult Function() checkingIn,
    required TResult Function() checkInError,
    required TResult Function() checkedOut,
    required TResult Function() checkingOut,
    required TResult Function() checkOutError,
  }) {
    return checkedOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? checkedIn,
    TResult? Function()? checkingIn,
    TResult? Function()? checkInError,
    TResult? Function()? checkedOut,
    TResult? Function()? checkingOut,
    TResult? Function()? checkOutError,
  }) {
    return checkedOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? checkedIn,
    TResult Function()? checkingIn,
    TResult Function()? checkInError,
    TResult Function()? checkedOut,
    TResult Function()? checkingOut,
    TResult Function()? checkOutError,
    required TResult orElse(),
  }) {
    if (checkedOut != null) {
      return checkedOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_CheckedIn value) checkedIn,
    required TResult Function(_CheckingIn value) checkingIn,
    required TResult Function(_CheckInError value) checkInError,
    required TResult Function(_CheckedOut value) checkedOut,
    required TResult Function(_CheckingOut value) checkingOut,
    required TResult Function(_CheckOutError value) checkOutError,
  }) {
    return checkedOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_CheckedIn value)? checkedIn,
    TResult? Function(_CheckingIn value)? checkingIn,
    TResult? Function(_CheckInError value)? checkInError,
    TResult? Function(_CheckedOut value)? checkedOut,
    TResult? Function(_CheckingOut value)? checkingOut,
    TResult? Function(_CheckOutError value)? checkOutError,
  }) {
    return checkedOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CheckedIn value)? checkedIn,
    TResult Function(_CheckingIn value)? checkingIn,
    TResult Function(_CheckInError value)? checkInError,
    TResult Function(_CheckedOut value)? checkedOut,
    TResult Function(_CheckingOut value)? checkingOut,
    TResult Function(_CheckOutError value)? checkOutError,
    required TResult orElse(),
  }) {
    if (checkedOut != null) {
      return checkedOut(this);
    }
    return orElse();
  }
}

abstract class _CheckedOut implements ScheduleCheckInState {
  const factory _CheckedOut() = _$CheckedOutImpl;
}

/// @nodoc
abstract class _$$CheckingOutImplCopyWith<$Res> {
  factory _$$CheckingOutImplCopyWith(
          _$CheckingOutImpl value, $Res Function(_$CheckingOutImpl) then) =
      __$$CheckingOutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CheckingOutImplCopyWithImpl<$Res>
    extends _$ScheduleCheckInStateCopyWithImpl<$Res, _$CheckingOutImpl>
    implements _$$CheckingOutImplCopyWith<$Res> {
  __$$CheckingOutImplCopyWithImpl(
      _$CheckingOutImpl _value, $Res Function(_$CheckingOutImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CheckingOutImpl implements _CheckingOut {
  const _$CheckingOutImpl();

  @override
  String toString() {
    return 'ScheduleCheckInState.checkingOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CheckingOutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() checkedIn,
    required TResult Function() checkingIn,
    required TResult Function() checkInError,
    required TResult Function() checkedOut,
    required TResult Function() checkingOut,
    required TResult Function() checkOutError,
  }) {
    return checkingOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? checkedIn,
    TResult? Function()? checkingIn,
    TResult? Function()? checkInError,
    TResult? Function()? checkedOut,
    TResult? Function()? checkingOut,
    TResult? Function()? checkOutError,
  }) {
    return checkingOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? checkedIn,
    TResult Function()? checkingIn,
    TResult Function()? checkInError,
    TResult Function()? checkedOut,
    TResult Function()? checkingOut,
    TResult Function()? checkOutError,
    required TResult orElse(),
  }) {
    if (checkingOut != null) {
      return checkingOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_CheckedIn value) checkedIn,
    required TResult Function(_CheckingIn value) checkingIn,
    required TResult Function(_CheckInError value) checkInError,
    required TResult Function(_CheckedOut value) checkedOut,
    required TResult Function(_CheckingOut value) checkingOut,
    required TResult Function(_CheckOutError value) checkOutError,
  }) {
    return checkingOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_CheckedIn value)? checkedIn,
    TResult? Function(_CheckingIn value)? checkingIn,
    TResult? Function(_CheckInError value)? checkInError,
    TResult? Function(_CheckedOut value)? checkedOut,
    TResult? Function(_CheckingOut value)? checkingOut,
    TResult? Function(_CheckOutError value)? checkOutError,
  }) {
    return checkingOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CheckedIn value)? checkedIn,
    TResult Function(_CheckingIn value)? checkingIn,
    TResult Function(_CheckInError value)? checkInError,
    TResult Function(_CheckedOut value)? checkedOut,
    TResult Function(_CheckingOut value)? checkingOut,
    TResult Function(_CheckOutError value)? checkOutError,
    required TResult orElse(),
  }) {
    if (checkingOut != null) {
      return checkingOut(this);
    }
    return orElse();
  }
}

abstract class _CheckingOut implements ScheduleCheckInState {
  const factory _CheckingOut() = _$CheckingOutImpl;
}

/// @nodoc
abstract class _$$CheckOutErrorImplCopyWith<$Res> {
  factory _$$CheckOutErrorImplCopyWith(
          _$CheckOutErrorImpl value, $Res Function(_$CheckOutErrorImpl) then) =
      __$$CheckOutErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CheckOutErrorImplCopyWithImpl<$Res>
    extends _$ScheduleCheckInStateCopyWithImpl<$Res, _$CheckOutErrorImpl>
    implements _$$CheckOutErrorImplCopyWith<$Res> {
  __$$CheckOutErrorImplCopyWithImpl(
      _$CheckOutErrorImpl _value, $Res Function(_$CheckOutErrorImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CheckOutErrorImpl implements _CheckOutError {
  const _$CheckOutErrorImpl();

  @override
  String toString() {
    return 'ScheduleCheckInState.checkOutError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CheckOutErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() checkedIn,
    required TResult Function() checkingIn,
    required TResult Function() checkInError,
    required TResult Function() checkedOut,
    required TResult Function() checkingOut,
    required TResult Function() checkOutError,
  }) {
    return checkOutError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? checkedIn,
    TResult? Function()? checkingIn,
    TResult? Function()? checkInError,
    TResult? Function()? checkedOut,
    TResult? Function()? checkingOut,
    TResult? Function()? checkOutError,
  }) {
    return checkOutError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? checkedIn,
    TResult Function()? checkingIn,
    TResult Function()? checkInError,
    TResult Function()? checkedOut,
    TResult Function()? checkingOut,
    TResult Function()? checkOutError,
    required TResult orElse(),
  }) {
    if (checkOutError != null) {
      return checkOutError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_CheckedIn value) checkedIn,
    required TResult Function(_CheckingIn value) checkingIn,
    required TResult Function(_CheckInError value) checkInError,
    required TResult Function(_CheckedOut value) checkedOut,
    required TResult Function(_CheckingOut value) checkingOut,
    required TResult Function(_CheckOutError value) checkOutError,
  }) {
    return checkOutError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_CheckedIn value)? checkedIn,
    TResult? Function(_CheckingIn value)? checkingIn,
    TResult? Function(_CheckInError value)? checkInError,
    TResult? Function(_CheckedOut value)? checkedOut,
    TResult? Function(_CheckingOut value)? checkingOut,
    TResult? Function(_CheckOutError value)? checkOutError,
  }) {
    return checkOutError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CheckedIn value)? checkedIn,
    TResult Function(_CheckingIn value)? checkingIn,
    TResult Function(_CheckInError value)? checkInError,
    TResult Function(_CheckedOut value)? checkedOut,
    TResult Function(_CheckingOut value)? checkingOut,
    TResult Function(_CheckOutError value)? checkOutError,
    required TResult orElse(),
  }) {
    if (checkOutError != null) {
      return checkOutError(this);
    }
    return orElse();
  }
}

abstract class _CheckOutError implements ScheduleCheckInState {
  const factory _CheckOutError() = _$CheckOutErrorImpl;
}
