// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'geo_locator_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GeoLocatorEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkLocationEnabled,
    required TResult Function() checkLocationPermission,
    required TResult Function() requestLocationPermission,
    required TResult Function() openLocationSetting,
    required TResult Function() startLocationStream,
    required TResult Function() stopLocationStream,
    required TResult Function(LatLng location) receivedLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkLocationEnabled,
    TResult? Function()? checkLocationPermission,
    TResult? Function()? requestLocationPermission,
    TResult? Function()? openLocationSetting,
    TResult? Function()? startLocationStream,
    TResult? Function()? stopLocationStream,
    TResult? Function(LatLng location)? receivedLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkLocationEnabled,
    TResult Function()? checkLocationPermission,
    TResult Function()? requestLocationPermission,
    TResult Function()? openLocationSetting,
    TResult Function()? startLocationStream,
    TResult Function()? stopLocationStream,
    TResult Function(LatLng location)? receivedLocation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckLocationEnabledEvent value)
        checkLocationEnabled,
    required TResult Function(CheckLocationPermissionEvent value)
        checkLocationPermission,
    required TResult Function(RequestLocationPermission value)
        requestLocationPermission,
    required TResult Function(OpenLocationSetting value) openLocationSetting,
    required TResult Function(StartLocationStream value) startLocationStream,
    required TResult Function(StopLocationStream value) stopLocationStream,
    required TResult Function(RecievedLocation value) receivedLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckLocationEnabledEvent value)? checkLocationEnabled,
    TResult? Function(CheckLocationPermissionEvent value)?
        checkLocationPermission,
    TResult? Function(RequestLocationPermission value)?
        requestLocationPermission,
    TResult? Function(OpenLocationSetting value)? openLocationSetting,
    TResult? Function(StartLocationStream value)? startLocationStream,
    TResult? Function(StopLocationStream value)? stopLocationStream,
    TResult? Function(RecievedLocation value)? receivedLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckLocationEnabledEvent value)? checkLocationEnabled,
    TResult Function(CheckLocationPermissionEvent value)?
        checkLocationPermission,
    TResult Function(RequestLocationPermission value)?
        requestLocationPermission,
    TResult Function(OpenLocationSetting value)? openLocationSetting,
    TResult Function(StartLocationStream value)? startLocationStream,
    TResult Function(StopLocationStream value)? stopLocationStream,
    TResult Function(RecievedLocation value)? receivedLocation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeoLocatorEventCopyWith<$Res> {
  factory $GeoLocatorEventCopyWith(
          GeoLocatorEvent value, $Res Function(GeoLocatorEvent) then) =
      _$GeoLocatorEventCopyWithImpl<$Res, GeoLocatorEvent>;
}

/// @nodoc
class _$GeoLocatorEventCopyWithImpl<$Res, $Val extends GeoLocatorEvent>
    implements $GeoLocatorEventCopyWith<$Res> {
  _$GeoLocatorEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CheckLocationEnabledEventImplCopyWith<$Res> {
  factory _$$CheckLocationEnabledEventImplCopyWith(
          _$CheckLocationEnabledEventImpl value,
          $Res Function(_$CheckLocationEnabledEventImpl) then) =
      __$$CheckLocationEnabledEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CheckLocationEnabledEventImplCopyWithImpl<$Res>
    extends _$GeoLocatorEventCopyWithImpl<$Res, _$CheckLocationEnabledEventImpl>
    implements _$$CheckLocationEnabledEventImplCopyWith<$Res> {
  __$$CheckLocationEnabledEventImplCopyWithImpl(
      _$CheckLocationEnabledEventImpl _value,
      $Res Function(_$CheckLocationEnabledEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CheckLocationEnabledEventImpl implements CheckLocationEnabledEvent {
  const _$CheckLocationEnabledEventImpl();

  @override
  String toString() {
    return 'GeoLocatorEvent.checkLocationEnabled()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckLocationEnabledEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkLocationEnabled,
    required TResult Function() checkLocationPermission,
    required TResult Function() requestLocationPermission,
    required TResult Function() openLocationSetting,
    required TResult Function() startLocationStream,
    required TResult Function() stopLocationStream,
    required TResult Function(LatLng location) receivedLocation,
  }) {
    return checkLocationEnabled();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkLocationEnabled,
    TResult? Function()? checkLocationPermission,
    TResult? Function()? requestLocationPermission,
    TResult? Function()? openLocationSetting,
    TResult? Function()? startLocationStream,
    TResult? Function()? stopLocationStream,
    TResult? Function(LatLng location)? receivedLocation,
  }) {
    return checkLocationEnabled?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkLocationEnabled,
    TResult Function()? checkLocationPermission,
    TResult Function()? requestLocationPermission,
    TResult Function()? openLocationSetting,
    TResult Function()? startLocationStream,
    TResult Function()? stopLocationStream,
    TResult Function(LatLng location)? receivedLocation,
    required TResult orElse(),
  }) {
    if (checkLocationEnabled != null) {
      return checkLocationEnabled();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckLocationEnabledEvent value)
        checkLocationEnabled,
    required TResult Function(CheckLocationPermissionEvent value)
        checkLocationPermission,
    required TResult Function(RequestLocationPermission value)
        requestLocationPermission,
    required TResult Function(OpenLocationSetting value) openLocationSetting,
    required TResult Function(StartLocationStream value) startLocationStream,
    required TResult Function(StopLocationStream value) stopLocationStream,
    required TResult Function(RecievedLocation value) receivedLocation,
  }) {
    return checkLocationEnabled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckLocationEnabledEvent value)? checkLocationEnabled,
    TResult? Function(CheckLocationPermissionEvent value)?
        checkLocationPermission,
    TResult? Function(RequestLocationPermission value)?
        requestLocationPermission,
    TResult? Function(OpenLocationSetting value)? openLocationSetting,
    TResult? Function(StartLocationStream value)? startLocationStream,
    TResult? Function(StopLocationStream value)? stopLocationStream,
    TResult? Function(RecievedLocation value)? receivedLocation,
  }) {
    return checkLocationEnabled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckLocationEnabledEvent value)? checkLocationEnabled,
    TResult Function(CheckLocationPermissionEvent value)?
        checkLocationPermission,
    TResult Function(RequestLocationPermission value)?
        requestLocationPermission,
    TResult Function(OpenLocationSetting value)? openLocationSetting,
    TResult Function(StartLocationStream value)? startLocationStream,
    TResult Function(StopLocationStream value)? stopLocationStream,
    TResult Function(RecievedLocation value)? receivedLocation,
    required TResult orElse(),
  }) {
    if (checkLocationEnabled != null) {
      return checkLocationEnabled(this);
    }
    return orElse();
  }
}

abstract class CheckLocationEnabledEvent implements GeoLocatorEvent {
  const factory CheckLocationEnabledEvent() = _$CheckLocationEnabledEventImpl;
}

/// @nodoc
abstract class _$$CheckLocationPermissionEventImplCopyWith<$Res> {
  factory _$$CheckLocationPermissionEventImplCopyWith(
          _$CheckLocationPermissionEventImpl value,
          $Res Function(_$CheckLocationPermissionEventImpl) then) =
      __$$CheckLocationPermissionEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CheckLocationPermissionEventImplCopyWithImpl<$Res>
    extends _$GeoLocatorEventCopyWithImpl<$Res,
        _$CheckLocationPermissionEventImpl>
    implements _$$CheckLocationPermissionEventImplCopyWith<$Res> {
  __$$CheckLocationPermissionEventImplCopyWithImpl(
      _$CheckLocationPermissionEventImpl _value,
      $Res Function(_$CheckLocationPermissionEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CheckLocationPermissionEventImpl
    implements CheckLocationPermissionEvent {
  const _$CheckLocationPermissionEventImpl();

  @override
  String toString() {
    return 'GeoLocatorEvent.checkLocationPermission()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckLocationPermissionEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkLocationEnabled,
    required TResult Function() checkLocationPermission,
    required TResult Function() requestLocationPermission,
    required TResult Function() openLocationSetting,
    required TResult Function() startLocationStream,
    required TResult Function() stopLocationStream,
    required TResult Function(LatLng location) receivedLocation,
  }) {
    return checkLocationPermission();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkLocationEnabled,
    TResult? Function()? checkLocationPermission,
    TResult? Function()? requestLocationPermission,
    TResult? Function()? openLocationSetting,
    TResult? Function()? startLocationStream,
    TResult? Function()? stopLocationStream,
    TResult? Function(LatLng location)? receivedLocation,
  }) {
    return checkLocationPermission?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkLocationEnabled,
    TResult Function()? checkLocationPermission,
    TResult Function()? requestLocationPermission,
    TResult Function()? openLocationSetting,
    TResult Function()? startLocationStream,
    TResult Function()? stopLocationStream,
    TResult Function(LatLng location)? receivedLocation,
    required TResult orElse(),
  }) {
    if (checkLocationPermission != null) {
      return checkLocationPermission();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckLocationEnabledEvent value)
        checkLocationEnabled,
    required TResult Function(CheckLocationPermissionEvent value)
        checkLocationPermission,
    required TResult Function(RequestLocationPermission value)
        requestLocationPermission,
    required TResult Function(OpenLocationSetting value) openLocationSetting,
    required TResult Function(StartLocationStream value) startLocationStream,
    required TResult Function(StopLocationStream value) stopLocationStream,
    required TResult Function(RecievedLocation value) receivedLocation,
  }) {
    return checkLocationPermission(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckLocationEnabledEvent value)? checkLocationEnabled,
    TResult? Function(CheckLocationPermissionEvent value)?
        checkLocationPermission,
    TResult? Function(RequestLocationPermission value)?
        requestLocationPermission,
    TResult? Function(OpenLocationSetting value)? openLocationSetting,
    TResult? Function(StartLocationStream value)? startLocationStream,
    TResult? Function(StopLocationStream value)? stopLocationStream,
    TResult? Function(RecievedLocation value)? receivedLocation,
  }) {
    return checkLocationPermission?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckLocationEnabledEvent value)? checkLocationEnabled,
    TResult Function(CheckLocationPermissionEvent value)?
        checkLocationPermission,
    TResult Function(RequestLocationPermission value)?
        requestLocationPermission,
    TResult Function(OpenLocationSetting value)? openLocationSetting,
    TResult Function(StartLocationStream value)? startLocationStream,
    TResult Function(StopLocationStream value)? stopLocationStream,
    TResult Function(RecievedLocation value)? receivedLocation,
    required TResult orElse(),
  }) {
    if (checkLocationPermission != null) {
      return checkLocationPermission(this);
    }
    return orElse();
  }
}

abstract class CheckLocationPermissionEvent implements GeoLocatorEvent {
  const factory CheckLocationPermissionEvent() =
      _$CheckLocationPermissionEventImpl;
}

/// @nodoc
abstract class _$$RequestLocationPermissionImplCopyWith<$Res> {
  factory _$$RequestLocationPermissionImplCopyWith(
          _$RequestLocationPermissionImpl value,
          $Res Function(_$RequestLocationPermissionImpl) then) =
      __$$RequestLocationPermissionImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RequestLocationPermissionImplCopyWithImpl<$Res>
    extends _$GeoLocatorEventCopyWithImpl<$Res, _$RequestLocationPermissionImpl>
    implements _$$RequestLocationPermissionImplCopyWith<$Res> {
  __$$RequestLocationPermissionImplCopyWithImpl(
      _$RequestLocationPermissionImpl _value,
      $Res Function(_$RequestLocationPermissionImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RequestLocationPermissionImpl implements RequestLocationPermission {
  const _$RequestLocationPermissionImpl();

  @override
  String toString() {
    return 'GeoLocatorEvent.requestLocationPermission()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestLocationPermissionImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkLocationEnabled,
    required TResult Function() checkLocationPermission,
    required TResult Function() requestLocationPermission,
    required TResult Function() openLocationSetting,
    required TResult Function() startLocationStream,
    required TResult Function() stopLocationStream,
    required TResult Function(LatLng location) receivedLocation,
  }) {
    return requestLocationPermission();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkLocationEnabled,
    TResult? Function()? checkLocationPermission,
    TResult? Function()? requestLocationPermission,
    TResult? Function()? openLocationSetting,
    TResult? Function()? startLocationStream,
    TResult? Function()? stopLocationStream,
    TResult? Function(LatLng location)? receivedLocation,
  }) {
    return requestLocationPermission?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkLocationEnabled,
    TResult Function()? checkLocationPermission,
    TResult Function()? requestLocationPermission,
    TResult Function()? openLocationSetting,
    TResult Function()? startLocationStream,
    TResult Function()? stopLocationStream,
    TResult Function(LatLng location)? receivedLocation,
    required TResult orElse(),
  }) {
    if (requestLocationPermission != null) {
      return requestLocationPermission();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckLocationEnabledEvent value)
        checkLocationEnabled,
    required TResult Function(CheckLocationPermissionEvent value)
        checkLocationPermission,
    required TResult Function(RequestLocationPermission value)
        requestLocationPermission,
    required TResult Function(OpenLocationSetting value) openLocationSetting,
    required TResult Function(StartLocationStream value) startLocationStream,
    required TResult Function(StopLocationStream value) stopLocationStream,
    required TResult Function(RecievedLocation value) receivedLocation,
  }) {
    return requestLocationPermission(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckLocationEnabledEvent value)? checkLocationEnabled,
    TResult? Function(CheckLocationPermissionEvent value)?
        checkLocationPermission,
    TResult? Function(RequestLocationPermission value)?
        requestLocationPermission,
    TResult? Function(OpenLocationSetting value)? openLocationSetting,
    TResult? Function(StartLocationStream value)? startLocationStream,
    TResult? Function(StopLocationStream value)? stopLocationStream,
    TResult? Function(RecievedLocation value)? receivedLocation,
  }) {
    return requestLocationPermission?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckLocationEnabledEvent value)? checkLocationEnabled,
    TResult Function(CheckLocationPermissionEvent value)?
        checkLocationPermission,
    TResult Function(RequestLocationPermission value)?
        requestLocationPermission,
    TResult Function(OpenLocationSetting value)? openLocationSetting,
    TResult Function(StartLocationStream value)? startLocationStream,
    TResult Function(StopLocationStream value)? stopLocationStream,
    TResult Function(RecievedLocation value)? receivedLocation,
    required TResult orElse(),
  }) {
    if (requestLocationPermission != null) {
      return requestLocationPermission(this);
    }
    return orElse();
  }
}

abstract class RequestLocationPermission implements GeoLocatorEvent {
  const factory RequestLocationPermission() = _$RequestLocationPermissionImpl;
}

/// @nodoc
abstract class _$$OpenLocationSettingImplCopyWith<$Res> {
  factory _$$OpenLocationSettingImplCopyWith(_$OpenLocationSettingImpl value,
          $Res Function(_$OpenLocationSettingImpl) then) =
      __$$OpenLocationSettingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OpenLocationSettingImplCopyWithImpl<$Res>
    extends _$GeoLocatorEventCopyWithImpl<$Res, _$OpenLocationSettingImpl>
    implements _$$OpenLocationSettingImplCopyWith<$Res> {
  __$$OpenLocationSettingImplCopyWithImpl(_$OpenLocationSettingImpl _value,
      $Res Function(_$OpenLocationSettingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$OpenLocationSettingImpl implements OpenLocationSetting {
  const _$OpenLocationSettingImpl();

  @override
  String toString() {
    return 'GeoLocatorEvent.openLocationSetting()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OpenLocationSettingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkLocationEnabled,
    required TResult Function() checkLocationPermission,
    required TResult Function() requestLocationPermission,
    required TResult Function() openLocationSetting,
    required TResult Function() startLocationStream,
    required TResult Function() stopLocationStream,
    required TResult Function(LatLng location) receivedLocation,
  }) {
    return openLocationSetting();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkLocationEnabled,
    TResult? Function()? checkLocationPermission,
    TResult? Function()? requestLocationPermission,
    TResult? Function()? openLocationSetting,
    TResult? Function()? startLocationStream,
    TResult? Function()? stopLocationStream,
    TResult? Function(LatLng location)? receivedLocation,
  }) {
    return openLocationSetting?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkLocationEnabled,
    TResult Function()? checkLocationPermission,
    TResult Function()? requestLocationPermission,
    TResult Function()? openLocationSetting,
    TResult Function()? startLocationStream,
    TResult Function()? stopLocationStream,
    TResult Function(LatLng location)? receivedLocation,
    required TResult orElse(),
  }) {
    if (openLocationSetting != null) {
      return openLocationSetting();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckLocationEnabledEvent value)
        checkLocationEnabled,
    required TResult Function(CheckLocationPermissionEvent value)
        checkLocationPermission,
    required TResult Function(RequestLocationPermission value)
        requestLocationPermission,
    required TResult Function(OpenLocationSetting value) openLocationSetting,
    required TResult Function(StartLocationStream value) startLocationStream,
    required TResult Function(StopLocationStream value) stopLocationStream,
    required TResult Function(RecievedLocation value) receivedLocation,
  }) {
    return openLocationSetting(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckLocationEnabledEvent value)? checkLocationEnabled,
    TResult? Function(CheckLocationPermissionEvent value)?
        checkLocationPermission,
    TResult? Function(RequestLocationPermission value)?
        requestLocationPermission,
    TResult? Function(OpenLocationSetting value)? openLocationSetting,
    TResult? Function(StartLocationStream value)? startLocationStream,
    TResult? Function(StopLocationStream value)? stopLocationStream,
    TResult? Function(RecievedLocation value)? receivedLocation,
  }) {
    return openLocationSetting?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckLocationEnabledEvent value)? checkLocationEnabled,
    TResult Function(CheckLocationPermissionEvent value)?
        checkLocationPermission,
    TResult Function(RequestLocationPermission value)?
        requestLocationPermission,
    TResult Function(OpenLocationSetting value)? openLocationSetting,
    TResult Function(StartLocationStream value)? startLocationStream,
    TResult Function(StopLocationStream value)? stopLocationStream,
    TResult Function(RecievedLocation value)? receivedLocation,
    required TResult orElse(),
  }) {
    if (openLocationSetting != null) {
      return openLocationSetting(this);
    }
    return orElse();
  }
}

abstract class OpenLocationSetting implements GeoLocatorEvent {
  const factory OpenLocationSetting() = _$OpenLocationSettingImpl;
}

/// @nodoc
abstract class _$$StartLocationStreamImplCopyWith<$Res> {
  factory _$$StartLocationStreamImplCopyWith(_$StartLocationStreamImpl value,
          $Res Function(_$StartLocationStreamImpl) then) =
      __$$StartLocationStreamImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartLocationStreamImplCopyWithImpl<$Res>
    extends _$GeoLocatorEventCopyWithImpl<$Res, _$StartLocationStreamImpl>
    implements _$$StartLocationStreamImplCopyWith<$Res> {
  __$$StartLocationStreamImplCopyWithImpl(_$StartLocationStreamImpl _value,
      $Res Function(_$StartLocationStreamImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartLocationStreamImpl implements StartLocationStream {
  const _$StartLocationStreamImpl();

  @override
  String toString() {
    return 'GeoLocatorEvent.startLocationStream()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartLocationStreamImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkLocationEnabled,
    required TResult Function() checkLocationPermission,
    required TResult Function() requestLocationPermission,
    required TResult Function() openLocationSetting,
    required TResult Function() startLocationStream,
    required TResult Function() stopLocationStream,
    required TResult Function(LatLng location) receivedLocation,
  }) {
    return startLocationStream();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkLocationEnabled,
    TResult? Function()? checkLocationPermission,
    TResult? Function()? requestLocationPermission,
    TResult? Function()? openLocationSetting,
    TResult? Function()? startLocationStream,
    TResult? Function()? stopLocationStream,
    TResult? Function(LatLng location)? receivedLocation,
  }) {
    return startLocationStream?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkLocationEnabled,
    TResult Function()? checkLocationPermission,
    TResult Function()? requestLocationPermission,
    TResult Function()? openLocationSetting,
    TResult Function()? startLocationStream,
    TResult Function()? stopLocationStream,
    TResult Function(LatLng location)? receivedLocation,
    required TResult orElse(),
  }) {
    if (startLocationStream != null) {
      return startLocationStream();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckLocationEnabledEvent value)
        checkLocationEnabled,
    required TResult Function(CheckLocationPermissionEvent value)
        checkLocationPermission,
    required TResult Function(RequestLocationPermission value)
        requestLocationPermission,
    required TResult Function(OpenLocationSetting value) openLocationSetting,
    required TResult Function(StartLocationStream value) startLocationStream,
    required TResult Function(StopLocationStream value) stopLocationStream,
    required TResult Function(RecievedLocation value) receivedLocation,
  }) {
    return startLocationStream(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckLocationEnabledEvent value)? checkLocationEnabled,
    TResult? Function(CheckLocationPermissionEvent value)?
        checkLocationPermission,
    TResult? Function(RequestLocationPermission value)?
        requestLocationPermission,
    TResult? Function(OpenLocationSetting value)? openLocationSetting,
    TResult? Function(StartLocationStream value)? startLocationStream,
    TResult? Function(StopLocationStream value)? stopLocationStream,
    TResult? Function(RecievedLocation value)? receivedLocation,
  }) {
    return startLocationStream?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckLocationEnabledEvent value)? checkLocationEnabled,
    TResult Function(CheckLocationPermissionEvent value)?
        checkLocationPermission,
    TResult Function(RequestLocationPermission value)?
        requestLocationPermission,
    TResult Function(OpenLocationSetting value)? openLocationSetting,
    TResult Function(StartLocationStream value)? startLocationStream,
    TResult Function(StopLocationStream value)? stopLocationStream,
    TResult Function(RecievedLocation value)? receivedLocation,
    required TResult orElse(),
  }) {
    if (startLocationStream != null) {
      return startLocationStream(this);
    }
    return orElse();
  }
}

abstract class StartLocationStream implements GeoLocatorEvent {
  const factory StartLocationStream() = _$StartLocationStreamImpl;
}

/// @nodoc
abstract class _$$StopLocationStreamImplCopyWith<$Res> {
  factory _$$StopLocationStreamImplCopyWith(_$StopLocationStreamImpl value,
          $Res Function(_$StopLocationStreamImpl) then) =
      __$$StopLocationStreamImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StopLocationStreamImplCopyWithImpl<$Res>
    extends _$GeoLocatorEventCopyWithImpl<$Res, _$StopLocationStreamImpl>
    implements _$$StopLocationStreamImplCopyWith<$Res> {
  __$$StopLocationStreamImplCopyWithImpl(_$StopLocationStreamImpl _value,
      $Res Function(_$StopLocationStreamImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StopLocationStreamImpl implements StopLocationStream {
  const _$StopLocationStreamImpl();

  @override
  String toString() {
    return 'GeoLocatorEvent.stopLocationStream()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StopLocationStreamImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkLocationEnabled,
    required TResult Function() checkLocationPermission,
    required TResult Function() requestLocationPermission,
    required TResult Function() openLocationSetting,
    required TResult Function() startLocationStream,
    required TResult Function() stopLocationStream,
    required TResult Function(LatLng location) receivedLocation,
  }) {
    return stopLocationStream();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkLocationEnabled,
    TResult? Function()? checkLocationPermission,
    TResult? Function()? requestLocationPermission,
    TResult? Function()? openLocationSetting,
    TResult? Function()? startLocationStream,
    TResult? Function()? stopLocationStream,
    TResult? Function(LatLng location)? receivedLocation,
  }) {
    return stopLocationStream?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkLocationEnabled,
    TResult Function()? checkLocationPermission,
    TResult Function()? requestLocationPermission,
    TResult Function()? openLocationSetting,
    TResult Function()? startLocationStream,
    TResult Function()? stopLocationStream,
    TResult Function(LatLng location)? receivedLocation,
    required TResult orElse(),
  }) {
    if (stopLocationStream != null) {
      return stopLocationStream();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckLocationEnabledEvent value)
        checkLocationEnabled,
    required TResult Function(CheckLocationPermissionEvent value)
        checkLocationPermission,
    required TResult Function(RequestLocationPermission value)
        requestLocationPermission,
    required TResult Function(OpenLocationSetting value) openLocationSetting,
    required TResult Function(StartLocationStream value) startLocationStream,
    required TResult Function(StopLocationStream value) stopLocationStream,
    required TResult Function(RecievedLocation value) receivedLocation,
  }) {
    return stopLocationStream(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckLocationEnabledEvent value)? checkLocationEnabled,
    TResult? Function(CheckLocationPermissionEvent value)?
        checkLocationPermission,
    TResult? Function(RequestLocationPermission value)?
        requestLocationPermission,
    TResult? Function(OpenLocationSetting value)? openLocationSetting,
    TResult? Function(StartLocationStream value)? startLocationStream,
    TResult? Function(StopLocationStream value)? stopLocationStream,
    TResult? Function(RecievedLocation value)? receivedLocation,
  }) {
    return stopLocationStream?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckLocationEnabledEvent value)? checkLocationEnabled,
    TResult Function(CheckLocationPermissionEvent value)?
        checkLocationPermission,
    TResult Function(RequestLocationPermission value)?
        requestLocationPermission,
    TResult Function(OpenLocationSetting value)? openLocationSetting,
    TResult Function(StartLocationStream value)? startLocationStream,
    TResult Function(StopLocationStream value)? stopLocationStream,
    TResult Function(RecievedLocation value)? receivedLocation,
    required TResult orElse(),
  }) {
    if (stopLocationStream != null) {
      return stopLocationStream(this);
    }
    return orElse();
  }
}

abstract class StopLocationStream implements GeoLocatorEvent {
  const factory StopLocationStream() = _$StopLocationStreamImpl;
}

/// @nodoc
abstract class _$$RecievedLocationImplCopyWith<$Res> {
  factory _$$RecievedLocationImplCopyWith(_$RecievedLocationImpl value,
          $Res Function(_$RecievedLocationImpl) then) =
      __$$RecievedLocationImplCopyWithImpl<$Res>;
  @useResult
  $Res call({LatLng location});
}

/// @nodoc
class __$$RecievedLocationImplCopyWithImpl<$Res>
    extends _$GeoLocatorEventCopyWithImpl<$Res, _$RecievedLocationImpl>
    implements _$$RecievedLocationImplCopyWith<$Res> {
  __$$RecievedLocationImplCopyWithImpl(_$RecievedLocationImpl _value,
      $Res Function(_$RecievedLocationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? location = null,
  }) {
    return _then(_$RecievedLocationImpl(
      null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LatLng,
    ));
  }
}

/// @nodoc

class _$RecievedLocationImpl implements RecievedLocation {
  const _$RecievedLocationImpl(this.location);

  @override
  final LatLng location;

  @override
  String toString() {
    return 'GeoLocatorEvent.receivedLocation(location: $location)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecievedLocationImpl &&
            (identical(other.location, location) ||
                other.location == location));
  }

  @override
  int get hashCode => Object.hash(runtimeType, location);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RecievedLocationImplCopyWith<_$RecievedLocationImpl> get copyWith =>
      __$$RecievedLocationImplCopyWithImpl<_$RecievedLocationImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkLocationEnabled,
    required TResult Function() checkLocationPermission,
    required TResult Function() requestLocationPermission,
    required TResult Function() openLocationSetting,
    required TResult Function() startLocationStream,
    required TResult Function() stopLocationStream,
    required TResult Function(LatLng location) receivedLocation,
  }) {
    return receivedLocation(location);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkLocationEnabled,
    TResult? Function()? checkLocationPermission,
    TResult? Function()? requestLocationPermission,
    TResult? Function()? openLocationSetting,
    TResult? Function()? startLocationStream,
    TResult? Function()? stopLocationStream,
    TResult? Function(LatLng location)? receivedLocation,
  }) {
    return receivedLocation?.call(location);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkLocationEnabled,
    TResult Function()? checkLocationPermission,
    TResult Function()? requestLocationPermission,
    TResult Function()? openLocationSetting,
    TResult Function()? startLocationStream,
    TResult Function()? stopLocationStream,
    TResult Function(LatLng location)? receivedLocation,
    required TResult orElse(),
  }) {
    if (receivedLocation != null) {
      return receivedLocation(location);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckLocationEnabledEvent value)
        checkLocationEnabled,
    required TResult Function(CheckLocationPermissionEvent value)
        checkLocationPermission,
    required TResult Function(RequestLocationPermission value)
        requestLocationPermission,
    required TResult Function(OpenLocationSetting value) openLocationSetting,
    required TResult Function(StartLocationStream value) startLocationStream,
    required TResult Function(StopLocationStream value) stopLocationStream,
    required TResult Function(RecievedLocation value) receivedLocation,
  }) {
    return receivedLocation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckLocationEnabledEvent value)? checkLocationEnabled,
    TResult? Function(CheckLocationPermissionEvent value)?
        checkLocationPermission,
    TResult? Function(RequestLocationPermission value)?
        requestLocationPermission,
    TResult? Function(OpenLocationSetting value)? openLocationSetting,
    TResult? Function(StartLocationStream value)? startLocationStream,
    TResult? Function(StopLocationStream value)? stopLocationStream,
    TResult? Function(RecievedLocation value)? receivedLocation,
  }) {
    return receivedLocation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckLocationEnabledEvent value)? checkLocationEnabled,
    TResult Function(CheckLocationPermissionEvent value)?
        checkLocationPermission,
    TResult Function(RequestLocationPermission value)?
        requestLocationPermission,
    TResult Function(OpenLocationSetting value)? openLocationSetting,
    TResult Function(StartLocationStream value)? startLocationStream,
    TResult Function(StopLocationStream value)? stopLocationStream,
    TResult Function(RecievedLocation value)? receivedLocation,
    required TResult orElse(),
  }) {
    if (receivedLocation != null) {
      return receivedLocation(this);
    }
    return orElse();
  }
}

abstract class RecievedLocation implements GeoLocatorEvent {
  const factory RecievedLocation(final LatLng location) =
      _$RecievedLocationImpl;

  LatLng get location;
  @JsonKey(ignore: true)
  _$$RecievedLocationImplCopyWith<_$RecievedLocationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GeoLocatorState {
  bool get isLocationTurnOn => throw _privateConstructorUsedError;
  bool get isPermissionEnabled => throw _privateConstructorUsedError;
  bool get isStreaming => throw _privateConstructorUsedError;
  LatLng? get currentLatLng => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GeoLocatorStateCopyWith<GeoLocatorState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeoLocatorStateCopyWith<$Res> {
  factory $GeoLocatorStateCopyWith(
          GeoLocatorState value, $Res Function(GeoLocatorState) then) =
      _$GeoLocatorStateCopyWithImpl<$Res, GeoLocatorState>;
  @useResult
  $Res call(
      {bool isLocationTurnOn,
      bool isPermissionEnabled,
      bool isStreaming,
      LatLng? currentLatLng});
}

/// @nodoc
class _$GeoLocatorStateCopyWithImpl<$Res, $Val extends GeoLocatorState>
    implements $GeoLocatorStateCopyWith<$Res> {
  _$GeoLocatorStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLocationTurnOn = null,
    Object? isPermissionEnabled = null,
    Object? isStreaming = null,
    Object? currentLatLng = freezed,
  }) {
    return _then(_value.copyWith(
      isLocationTurnOn: null == isLocationTurnOn
          ? _value.isLocationTurnOn
          : isLocationTurnOn // ignore: cast_nullable_to_non_nullable
              as bool,
      isPermissionEnabled: null == isPermissionEnabled
          ? _value.isPermissionEnabled
          : isPermissionEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      isStreaming: null == isStreaming
          ? _value.isStreaming
          : isStreaming // ignore: cast_nullable_to_non_nullable
              as bool,
      currentLatLng: freezed == currentLatLng
          ? _value.currentLatLng
          : currentLatLng // ignore: cast_nullable_to_non_nullable
              as LatLng?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GeoLocatorStateImplCopyWith<$Res>
    implements $GeoLocatorStateCopyWith<$Res> {
  factory _$$GeoLocatorStateImplCopyWith(_$GeoLocatorStateImpl value,
          $Res Function(_$GeoLocatorStateImpl) then) =
      __$$GeoLocatorStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLocationTurnOn,
      bool isPermissionEnabled,
      bool isStreaming,
      LatLng? currentLatLng});
}

/// @nodoc
class __$$GeoLocatorStateImplCopyWithImpl<$Res>
    extends _$GeoLocatorStateCopyWithImpl<$Res, _$GeoLocatorStateImpl>
    implements _$$GeoLocatorStateImplCopyWith<$Res> {
  __$$GeoLocatorStateImplCopyWithImpl(
      _$GeoLocatorStateImpl _value, $Res Function(_$GeoLocatorStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLocationTurnOn = null,
    Object? isPermissionEnabled = null,
    Object? isStreaming = null,
    Object? currentLatLng = freezed,
  }) {
    return _then(_$GeoLocatorStateImpl(
      isLocationTurnOn: null == isLocationTurnOn
          ? _value.isLocationTurnOn
          : isLocationTurnOn // ignore: cast_nullable_to_non_nullable
              as bool,
      isPermissionEnabled: null == isPermissionEnabled
          ? _value.isPermissionEnabled
          : isPermissionEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      isStreaming: null == isStreaming
          ? _value.isStreaming
          : isStreaming // ignore: cast_nullable_to_non_nullable
              as bool,
      currentLatLng: freezed == currentLatLng
          ? _value.currentLatLng
          : currentLatLng // ignore: cast_nullable_to_non_nullable
              as LatLng?,
    ));
  }
}

/// @nodoc

class _$GeoLocatorStateImpl implements _GeoLocatorState {
  const _$GeoLocatorStateImpl(
      {required this.isLocationTurnOn,
      required this.isPermissionEnabled,
      this.isStreaming = false,
      this.currentLatLng});

  @override
  final bool isLocationTurnOn;
  @override
  final bool isPermissionEnabled;
  @override
  @JsonKey()
  final bool isStreaming;
  @override
  final LatLng? currentLatLng;

  @override
  String toString() {
    return 'GeoLocatorState(isLocationTurnOn: $isLocationTurnOn, isPermissionEnabled: $isPermissionEnabled, isStreaming: $isStreaming, currentLatLng: $currentLatLng)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GeoLocatorStateImpl &&
            (identical(other.isLocationTurnOn, isLocationTurnOn) ||
                other.isLocationTurnOn == isLocationTurnOn) &&
            (identical(other.isPermissionEnabled, isPermissionEnabled) ||
                other.isPermissionEnabled == isPermissionEnabled) &&
            (identical(other.isStreaming, isStreaming) ||
                other.isStreaming == isStreaming) &&
            (identical(other.currentLatLng, currentLatLng) ||
                other.currentLatLng == currentLatLng));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLocationTurnOn,
      isPermissionEnabled, isStreaming, currentLatLng);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GeoLocatorStateImplCopyWith<_$GeoLocatorStateImpl> get copyWith =>
      __$$GeoLocatorStateImplCopyWithImpl<_$GeoLocatorStateImpl>(
          this, _$identity);
}

abstract class _GeoLocatorState implements GeoLocatorState {
  const factory _GeoLocatorState(
      {required final bool isLocationTurnOn,
      required final bool isPermissionEnabled,
      final bool isStreaming,
      final LatLng? currentLatLng}) = _$GeoLocatorStateImpl;

  @override
  bool get isLocationTurnOn;
  @override
  bool get isPermissionEnabled;
  @override
  bool get isStreaming;
  @override
  LatLng? get currentLatLng;
  @override
  @JsonKey(ignore: true)
  _$$GeoLocatorStateImplCopyWith<_$GeoLocatorStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
