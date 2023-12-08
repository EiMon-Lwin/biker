// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'check_in_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CheckInEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() loadAssemblyLatLng,
    required TResult Function(LatLng latLng) updateUserLocation,
    required TResult Function(LatLng latLng) updateAssemblyLatLng,
    required TResult Function() locateButtonPressed,
    required TResult Function() onAddImageButtonPressed,
    required TResult Function() removeSelectedImage,
    required TResult Function() onMapReady,
    required TResult Function() onCheckInButtonPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? loadAssemblyLatLng,
    TResult? Function(LatLng latLng)? updateUserLocation,
    TResult? Function(LatLng latLng)? updateAssemblyLatLng,
    TResult? Function()? locateButtonPressed,
    TResult? Function()? onAddImageButtonPressed,
    TResult? Function()? removeSelectedImage,
    TResult? Function()? onMapReady,
    TResult? Function()? onCheckInButtonPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loadAssemblyLatLng,
    TResult Function(LatLng latLng)? updateUserLocation,
    TResult Function(LatLng latLng)? updateAssemblyLatLng,
    TResult Function()? locateButtonPressed,
    TResult Function()? onAddImageButtonPressed,
    TResult Function()? removeSelectedImage,
    TResult Function()? onMapReady,
    TResult Function()? onCheckInButtonPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoadAssemblyLatLng value) loadAssemblyLatLng,
    required TResult Function(_UpdateUserLocation value) updateUserLocation,
    required TResult Function(_UpdateAssemblyLatLng value) updateAssemblyLatLng,
    required TResult Function(_LocateButtonPressed value) locateButtonPressed,
    required TResult Function(_AddImageButtonPressed value)
        onAddImageButtonPressed,
    required TResult Function(_RemoveSelectedImage value) removeSelectedImage,
    required TResult Function(_OnMapReady value) onMapReady,
    required TResult Function(_OnCheckInButtonPressed value)
        onCheckInButtonPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoadAssemblyLatLng value)? loadAssemblyLatLng,
    TResult? Function(_UpdateUserLocation value)? updateUserLocation,
    TResult? Function(_UpdateAssemblyLatLng value)? updateAssemblyLatLng,
    TResult? Function(_LocateButtonPressed value)? locateButtonPressed,
    TResult? Function(_AddImageButtonPressed value)? onAddImageButtonPressed,
    TResult? Function(_RemoveSelectedImage value)? removeSelectedImage,
    TResult? Function(_OnMapReady value)? onMapReady,
    TResult? Function(_OnCheckInButtonPressed value)? onCheckInButtonPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadAssemblyLatLng value)? loadAssemblyLatLng,
    TResult Function(_UpdateUserLocation value)? updateUserLocation,
    TResult Function(_UpdateAssemblyLatLng value)? updateAssemblyLatLng,
    TResult Function(_LocateButtonPressed value)? locateButtonPressed,
    TResult Function(_AddImageButtonPressed value)? onAddImageButtonPressed,
    TResult Function(_RemoveSelectedImage value)? removeSelectedImage,
    TResult Function(_OnMapReady value)? onMapReady,
    TResult Function(_OnCheckInButtonPressed value)? onCheckInButtonPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckInEventCopyWith<$Res> {
  factory $CheckInEventCopyWith(
          CheckInEvent value, $Res Function(CheckInEvent) then) =
      _$CheckInEventCopyWithImpl<$Res, CheckInEvent>;
}

/// @nodoc
class _$CheckInEventCopyWithImpl<$Res, $Val extends CheckInEvent>
    implements $CheckInEventCopyWith<$Res> {
  _$CheckInEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$CheckInEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl with DiagnosticableTreeMixin implements _Started {
  const _$StartedImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CheckInEvent.started()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'CheckInEvent.started'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() loadAssemblyLatLng,
    required TResult Function(LatLng latLng) updateUserLocation,
    required TResult Function(LatLng latLng) updateAssemblyLatLng,
    required TResult Function() locateButtonPressed,
    required TResult Function() onAddImageButtonPressed,
    required TResult Function() removeSelectedImage,
    required TResult Function() onMapReady,
    required TResult Function() onCheckInButtonPressed,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? loadAssemblyLatLng,
    TResult? Function(LatLng latLng)? updateUserLocation,
    TResult? Function(LatLng latLng)? updateAssemblyLatLng,
    TResult? Function()? locateButtonPressed,
    TResult? Function()? onAddImageButtonPressed,
    TResult? Function()? removeSelectedImage,
    TResult? Function()? onMapReady,
    TResult? Function()? onCheckInButtonPressed,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loadAssemblyLatLng,
    TResult Function(LatLng latLng)? updateUserLocation,
    TResult Function(LatLng latLng)? updateAssemblyLatLng,
    TResult Function()? locateButtonPressed,
    TResult Function()? onAddImageButtonPressed,
    TResult Function()? removeSelectedImage,
    TResult Function()? onMapReady,
    TResult Function()? onCheckInButtonPressed,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoadAssemblyLatLng value) loadAssemblyLatLng,
    required TResult Function(_UpdateUserLocation value) updateUserLocation,
    required TResult Function(_UpdateAssemblyLatLng value) updateAssemblyLatLng,
    required TResult Function(_LocateButtonPressed value) locateButtonPressed,
    required TResult Function(_AddImageButtonPressed value)
        onAddImageButtonPressed,
    required TResult Function(_RemoveSelectedImage value) removeSelectedImage,
    required TResult Function(_OnMapReady value) onMapReady,
    required TResult Function(_OnCheckInButtonPressed value)
        onCheckInButtonPressed,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoadAssemblyLatLng value)? loadAssemblyLatLng,
    TResult? Function(_UpdateUserLocation value)? updateUserLocation,
    TResult? Function(_UpdateAssemblyLatLng value)? updateAssemblyLatLng,
    TResult? Function(_LocateButtonPressed value)? locateButtonPressed,
    TResult? Function(_AddImageButtonPressed value)? onAddImageButtonPressed,
    TResult? Function(_RemoveSelectedImage value)? removeSelectedImage,
    TResult? Function(_OnMapReady value)? onMapReady,
    TResult? Function(_OnCheckInButtonPressed value)? onCheckInButtonPressed,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadAssemblyLatLng value)? loadAssemblyLatLng,
    TResult Function(_UpdateUserLocation value)? updateUserLocation,
    TResult Function(_UpdateAssemblyLatLng value)? updateAssemblyLatLng,
    TResult Function(_LocateButtonPressed value)? locateButtonPressed,
    TResult Function(_AddImageButtonPressed value)? onAddImageButtonPressed,
    TResult Function(_RemoveSelectedImage value)? removeSelectedImage,
    TResult Function(_OnMapReady value)? onMapReady,
    TResult Function(_OnCheckInButtonPressed value)? onCheckInButtonPressed,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements CheckInEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$LoadAssemblyLatLngImplCopyWith<$Res> {
  factory _$$LoadAssemblyLatLngImplCopyWith(_$LoadAssemblyLatLngImpl value,
          $Res Function(_$LoadAssemblyLatLngImpl) then) =
      __$$LoadAssemblyLatLngImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadAssemblyLatLngImplCopyWithImpl<$Res>
    extends _$CheckInEventCopyWithImpl<$Res, _$LoadAssemblyLatLngImpl>
    implements _$$LoadAssemblyLatLngImplCopyWith<$Res> {
  __$$LoadAssemblyLatLngImplCopyWithImpl(_$LoadAssemblyLatLngImpl _value,
      $Res Function(_$LoadAssemblyLatLngImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadAssemblyLatLngImpl
    with DiagnosticableTreeMixin
    implements _LoadAssemblyLatLng {
  const _$LoadAssemblyLatLngImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CheckInEvent.loadAssemblyLatLng()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'CheckInEvent.loadAssemblyLatLng'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadAssemblyLatLngImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() loadAssemblyLatLng,
    required TResult Function(LatLng latLng) updateUserLocation,
    required TResult Function(LatLng latLng) updateAssemblyLatLng,
    required TResult Function() locateButtonPressed,
    required TResult Function() onAddImageButtonPressed,
    required TResult Function() removeSelectedImage,
    required TResult Function() onMapReady,
    required TResult Function() onCheckInButtonPressed,
  }) {
    return loadAssemblyLatLng();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? loadAssemblyLatLng,
    TResult? Function(LatLng latLng)? updateUserLocation,
    TResult? Function(LatLng latLng)? updateAssemblyLatLng,
    TResult? Function()? locateButtonPressed,
    TResult? Function()? onAddImageButtonPressed,
    TResult? Function()? removeSelectedImage,
    TResult? Function()? onMapReady,
    TResult? Function()? onCheckInButtonPressed,
  }) {
    return loadAssemblyLatLng?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loadAssemblyLatLng,
    TResult Function(LatLng latLng)? updateUserLocation,
    TResult Function(LatLng latLng)? updateAssemblyLatLng,
    TResult Function()? locateButtonPressed,
    TResult Function()? onAddImageButtonPressed,
    TResult Function()? removeSelectedImage,
    TResult Function()? onMapReady,
    TResult Function()? onCheckInButtonPressed,
    required TResult orElse(),
  }) {
    if (loadAssemblyLatLng != null) {
      return loadAssemblyLatLng();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoadAssemblyLatLng value) loadAssemblyLatLng,
    required TResult Function(_UpdateUserLocation value) updateUserLocation,
    required TResult Function(_UpdateAssemblyLatLng value) updateAssemblyLatLng,
    required TResult Function(_LocateButtonPressed value) locateButtonPressed,
    required TResult Function(_AddImageButtonPressed value)
        onAddImageButtonPressed,
    required TResult Function(_RemoveSelectedImage value) removeSelectedImage,
    required TResult Function(_OnMapReady value) onMapReady,
    required TResult Function(_OnCheckInButtonPressed value)
        onCheckInButtonPressed,
  }) {
    return loadAssemblyLatLng(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoadAssemblyLatLng value)? loadAssemblyLatLng,
    TResult? Function(_UpdateUserLocation value)? updateUserLocation,
    TResult? Function(_UpdateAssemblyLatLng value)? updateAssemblyLatLng,
    TResult? Function(_LocateButtonPressed value)? locateButtonPressed,
    TResult? Function(_AddImageButtonPressed value)? onAddImageButtonPressed,
    TResult? Function(_RemoveSelectedImage value)? removeSelectedImage,
    TResult? Function(_OnMapReady value)? onMapReady,
    TResult? Function(_OnCheckInButtonPressed value)? onCheckInButtonPressed,
  }) {
    return loadAssemblyLatLng?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadAssemblyLatLng value)? loadAssemblyLatLng,
    TResult Function(_UpdateUserLocation value)? updateUserLocation,
    TResult Function(_UpdateAssemblyLatLng value)? updateAssemblyLatLng,
    TResult Function(_LocateButtonPressed value)? locateButtonPressed,
    TResult Function(_AddImageButtonPressed value)? onAddImageButtonPressed,
    TResult Function(_RemoveSelectedImage value)? removeSelectedImage,
    TResult Function(_OnMapReady value)? onMapReady,
    TResult Function(_OnCheckInButtonPressed value)? onCheckInButtonPressed,
    required TResult orElse(),
  }) {
    if (loadAssemblyLatLng != null) {
      return loadAssemblyLatLng(this);
    }
    return orElse();
  }
}

abstract class _LoadAssemblyLatLng implements CheckInEvent {
  const factory _LoadAssemblyLatLng() = _$LoadAssemblyLatLngImpl;
}

/// @nodoc
abstract class _$$UpdateUserLocationImplCopyWith<$Res> {
  factory _$$UpdateUserLocationImplCopyWith(_$UpdateUserLocationImpl value,
          $Res Function(_$UpdateUserLocationImpl) then) =
      __$$UpdateUserLocationImplCopyWithImpl<$Res>;
  @useResult
  $Res call({LatLng latLng});
}

/// @nodoc
class __$$UpdateUserLocationImplCopyWithImpl<$Res>
    extends _$CheckInEventCopyWithImpl<$Res, _$UpdateUserLocationImpl>
    implements _$$UpdateUserLocationImplCopyWith<$Res> {
  __$$UpdateUserLocationImplCopyWithImpl(_$UpdateUserLocationImpl _value,
      $Res Function(_$UpdateUserLocationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latLng = null,
  }) {
    return _then(_$UpdateUserLocationImpl(
      null == latLng
          ? _value.latLng
          : latLng // ignore: cast_nullable_to_non_nullable
              as LatLng,
    ));
  }
}

/// @nodoc

class _$UpdateUserLocationImpl
    with DiagnosticableTreeMixin
    implements _UpdateUserLocation {
  const _$UpdateUserLocationImpl(this.latLng);

  @override
  final LatLng latLng;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CheckInEvent.updateUserLocation(latLng: $latLng)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CheckInEvent.updateUserLocation'))
      ..add(DiagnosticsProperty('latLng', latLng));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateUserLocationImpl &&
            (identical(other.latLng, latLng) || other.latLng == latLng));
  }

  @override
  int get hashCode => Object.hash(runtimeType, latLng);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateUserLocationImplCopyWith<_$UpdateUserLocationImpl> get copyWith =>
      __$$UpdateUserLocationImplCopyWithImpl<_$UpdateUserLocationImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() loadAssemblyLatLng,
    required TResult Function(LatLng latLng) updateUserLocation,
    required TResult Function(LatLng latLng) updateAssemblyLatLng,
    required TResult Function() locateButtonPressed,
    required TResult Function() onAddImageButtonPressed,
    required TResult Function() removeSelectedImage,
    required TResult Function() onMapReady,
    required TResult Function() onCheckInButtonPressed,
  }) {
    return updateUserLocation(latLng);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? loadAssemblyLatLng,
    TResult? Function(LatLng latLng)? updateUserLocation,
    TResult? Function(LatLng latLng)? updateAssemblyLatLng,
    TResult? Function()? locateButtonPressed,
    TResult? Function()? onAddImageButtonPressed,
    TResult? Function()? removeSelectedImage,
    TResult? Function()? onMapReady,
    TResult? Function()? onCheckInButtonPressed,
  }) {
    return updateUserLocation?.call(latLng);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loadAssemblyLatLng,
    TResult Function(LatLng latLng)? updateUserLocation,
    TResult Function(LatLng latLng)? updateAssemblyLatLng,
    TResult Function()? locateButtonPressed,
    TResult Function()? onAddImageButtonPressed,
    TResult Function()? removeSelectedImage,
    TResult Function()? onMapReady,
    TResult Function()? onCheckInButtonPressed,
    required TResult orElse(),
  }) {
    if (updateUserLocation != null) {
      return updateUserLocation(latLng);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoadAssemblyLatLng value) loadAssemblyLatLng,
    required TResult Function(_UpdateUserLocation value) updateUserLocation,
    required TResult Function(_UpdateAssemblyLatLng value) updateAssemblyLatLng,
    required TResult Function(_LocateButtonPressed value) locateButtonPressed,
    required TResult Function(_AddImageButtonPressed value)
        onAddImageButtonPressed,
    required TResult Function(_RemoveSelectedImage value) removeSelectedImage,
    required TResult Function(_OnMapReady value) onMapReady,
    required TResult Function(_OnCheckInButtonPressed value)
        onCheckInButtonPressed,
  }) {
    return updateUserLocation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoadAssemblyLatLng value)? loadAssemblyLatLng,
    TResult? Function(_UpdateUserLocation value)? updateUserLocation,
    TResult? Function(_UpdateAssemblyLatLng value)? updateAssemblyLatLng,
    TResult? Function(_LocateButtonPressed value)? locateButtonPressed,
    TResult? Function(_AddImageButtonPressed value)? onAddImageButtonPressed,
    TResult? Function(_RemoveSelectedImage value)? removeSelectedImage,
    TResult? Function(_OnMapReady value)? onMapReady,
    TResult? Function(_OnCheckInButtonPressed value)? onCheckInButtonPressed,
  }) {
    return updateUserLocation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadAssemblyLatLng value)? loadAssemblyLatLng,
    TResult Function(_UpdateUserLocation value)? updateUserLocation,
    TResult Function(_UpdateAssemblyLatLng value)? updateAssemblyLatLng,
    TResult Function(_LocateButtonPressed value)? locateButtonPressed,
    TResult Function(_AddImageButtonPressed value)? onAddImageButtonPressed,
    TResult Function(_RemoveSelectedImage value)? removeSelectedImage,
    TResult Function(_OnMapReady value)? onMapReady,
    TResult Function(_OnCheckInButtonPressed value)? onCheckInButtonPressed,
    required TResult orElse(),
  }) {
    if (updateUserLocation != null) {
      return updateUserLocation(this);
    }
    return orElse();
  }
}

abstract class _UpdateUserLocation implements CheckInEvent {
  const factory _UpdateUserLocation(final LatLng latLng) =
      _$UpdateUserLocationImpl;

  LatLng get latLng;
  @JsonKey(ignore: true)
  _$$UpdateUserLocationImplCopyWith<_$UpdateUserLocationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateAssemblyLatLngImplCopyWith<$Res> {
  factory _$$UpdateAssemblyLatLngImplCopyWith(_$UpdateAssemblyLatLngImpl value,
          $Res Function(_$UpdateAssemblyLatLngImpl) then) =
      __$$UpdateAssemblyLatLngImplCopyWithImpl<$Res>;
  @useResult
  $Res call({LatLng latLng});
}

/// @nodoc
class __$$UpdateAssemblyLatLngImplCopyWithImpl<$Res>
    extends _$CheckInEventCopyWithImpl<$Res, _$UpdateAssemblyLatLngImpl>
    implements _$$UpdateAssemblyLatLngImplCopyWith<$Res> {
  __$$UpdateAssemblyLatLngImplCopyWithImpl(_$UpdateAssemblyLatLngImpl _value,
      $Res Function(_$UpdateAssemblyLatLngImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latLng = null,
  }) {
    return _then(_$UpdateAssemblyLatLngImpl(
      null == latLng
          ? _value.latLng
          : latLng // ignore: cast_nullable_to_non_nullable
              as LatLng,
    ));
  }
}

/// @nodoc

class _$UpdateAssemblyLatLngImpl
    with DiagnosticableTreeMixin
    implements _UpdateAssemblyLatLng {
  const _$UpdateAssemblyLatLngImpl(this.latLng);

  @override
  final LatLng latLng;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CheckInEvent.updateAssemblyLatLng(latLng: $latLng)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CheckInEvent.updateAssemblyLatLng'))
      ..add(DiagnosticsProperty('latLng', latLng));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateAssemblyLatLngImpl &&
            (identical(other.latLng, latLng) || other.latLng == latLng));
  }

  @override
  int get hashCode => Object.hash(runtimeType, latLng);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateAssemblyLatLngImplCopyWith<_$UpdateAssemblyLatLngImpl>
      get copyWith =>
          __$$UpdateAssemblyLatLngImplCopyWithImpl<_$UpdateAssemblyLatLngImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() loadAssemblyLatLng,
    required TResult Function(LatLng latLng) updateUserLocation,
    required TResult Function(LatLng latLng) updateAssemblyLatLng,
    required TResult Function() locateButtonPressed,
    required TResult Function() onAddImageButtonPressed,
    required TResult Function() removeSelectedImage,
    required TResult Function() onMapReady,
    required TResult Function() onCheckInButtonPressed,
  }) {
    return updateAssemblyLatLng(latLng);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? loadAssemblyLatLng,
    TResult? Function(LatLng latLng)? updateUserLocation,
    TResult? Function(LatLng latLng)? updateAssemblyLatLng,
    TResult? Function()? locateButtonPressed,
    TResult? Function()? onAddImageButtonPressed,
    TResult? Function()? removeSelectedImage,
    TResult? Function()? onMapReady,
    TResult? Function()? onCheckInButtonPressed,
  }) {
    return updateAssemblyLatLng?.call(latLng);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loadAssemblyLatLng,
    TResult Function(LatLng latLng)? updateUserLocation,
    TResult Function(LatLng latLng)? updateAssemblyLatLng,
    TResult Function()? locateButtonPressed,
    TResult Function()? onAddImageButtonPressed,
    TResult Function()? removeSelectedImage,
    TResult Function()? onMapReady,
    TResult Function()? onCheckInButtonPressed,
    required TResult orElse(),
  }) {
    if (updateAssemblyLatLng != null) {
      return updateAssemblyLatLng(latLng);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoadAssemblyLatLng value) loadAssemblyLatLng,
    required TResult Function(_UpdateUserLocation value) updateUserLocation,
    required TResult Function(_UpdateAssemblyLatLng value) updateAssemblyLatLng,
    required TResult Function(_LocateButtonPressed value) locateButtonPressed,
    required TResult Function(_AddImageButtonPressed value)
        onAddImageButtonPressed,
    required TResult Function(_RemoveSelectedImage value) removeSelectedImage,
    required TResult Function(_OnMapReady value) onMapReady,
    required TResult Function(_OnCheckInButtonPressed value)
        onCheckInButtonPressed,
  }) {
    return updateAssemblyLatLng(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoadAssemblyLatLng value)? loadAssemblyLatLng,
    TResult? Function(_UpdateUserLocation value)? updateUserLocation,
    TResult? Function(_UpdateAssemblyLatLng value)? updateAssemblyLatLng,
    TResult? Function(_LocateButtonPressed value)? locateButtonPressed,
    TResult? Function(_AddImageButtonPressed value)? onAddImageButtonPressed,
    TResult? Function(_RemoveSelectedImage value)? removeSelectedImage,
    TResult? Function(_OnMapReady value)? onMapReady,
    TResult? Function(_OnCheckInButtonPressed value)? onCheckInButtonPressed,
  }) {
    return updateAssemblyLatLng?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadAssemblyLatLng value)? loadAssemblyLatLng,
    TResult Function(_UpdateUserLocation value)? updateUserLocation,
    TResult Function(_UpdateAssemblyLatLng value)? updateAssemblyLatLng,
    TResult Function(_LocateButtonPressed value)? locateButtonPressed,
    TResult Function(_AddImageButtonPressed value)? onAddImageButtonPressed,
    TResult Function(_RemoveSelectedImage value)? removeSelectedImage,
    TResult Function(_OnMapReady value)? onMapReady,
    TResult Function(_OnCheckInButtonPressed value)? onCheckInButtonPressed,
    required TResult orElse(),
  }) {
    if (updateAssemblyLatLng != null) {
      return updateAssemblyLatLng(this);
    }
    return orElse();
  }
}

abstract class _UpdateAssemblyLatLng implements CheckInEvent {
  const factory _UpdateAssemblyLatLng(final LatLng latLng) =
      _$UpdateAssemblyLatLngImpl;

  LatLng get latLng;
  @JsonKey(ignore: true)
  _$$UpdateAssemblyLatLngImplCopyWith<_$UpdateAssemblyLatLngImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LocateButtonPressedImplCopyWith<$Res> {
  factory _$$LocateButtonPressedImplCopyWith(_$LocateButtonPressedImpl value,
          $Res Function(_$LocateButtonPressedImpl) then) =
      __$$LocateButtonPressedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LocateButtonPressedImplCopyWithImpl<$Res>
    extends _$CheckInEventCopyWithImpl<$Res, _$LocateButtonPressedImpl>
    implements _$$LocateButtonPressedImplCopyWith<$Res> {
  __$$LocateButtonPressedImplCopyWithImpl(_$LocateButtonPressedImpl _value,
      $Res Function(_$LocateButtonPressedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LocateButtonPressedImpl
    with DiagnosticableTreeMixin
    implements _LocateButtonPressed {
  const _$LocateButtonPressedImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CheckInEvent.locateButtonPressed()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'CheckInEvent.locateButtonPressed'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocateButtonPressedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() loadAssemblyLatLng,
    required TResult Function(LatLng latLng) updateUserLocation,
    required TResult Function(LatLng latLng) updateAssemblyLatLng,
    required TResult Function() locateButtonPressed,
    required TResult Function() onAddImageButtonPressed,
    required TResult Function() removeSelectedImage,
    required TResult Function() onMapReady,
    required TResult Function() onCheckInButtonPressed,
  }) {
    return locateButtonPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? loadAssemblyLatLng,
    TResult? Function(LatLng latLng)? updateUserLocation,
    TResult? Function(LatLng latLng)? updateAssemblyLatLng,
    TResult? Function()? locateButtonPressed,
    TResult? Function()? onAddImageButtonPressed,
    TResult? Function()? removeSelectedImage,
    TResult? Function()? onMapReady,
    TResult? Function()? onCheckInButtonPressed,
  }) {
    return locateButtonPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loadAssemblyLatLng,
    TResult Function(LatLng latLng)? updateUserLocation,
    TResult Function(LatLng latLng)? updateAssemblyLatLng,
    TResult Function()? locateButtonPressed,
    TResult Function()? onAddImageButtonPressed,
    TResult Function()? removeSelectedImage,
    TResult Function()? onMapReady,
    TResult Function()? onCheckInButtonPressed,
    required TResult orElse(),
  }) {
    if (locateButtonPressed != null) {
      return locateButtonPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoadAssemblyLatLng value) loadAssemblyLatLng,
    required TResult Function(_UpdateUserLocation value) updateUserLocation,
    required TResult Function(_UpdateAssemblyLatLng value) updateAssemblyLatLng,
    required TResult Function(_LocateButtonPressed value) locateButtonPressed,
    required TResult Function(_AddImageButtonPressed value)
        onAddImageButtonPressed,
    required TResult Function(_RemoveSelectedImage value) removeSelectedImage,
    required TResult Function(_OnMapReady value) onMapReady,
    required TResult Function(_OnCheckInButtonPressed value)
        onCheckInButtonPressed,
  }) {
    return locateButtonPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoadAssemblyLatLng value)? loadAssemblyLatLng,
    TResult? Function(_UpdateUserLocation value)? updateUserLocation,
    TResult? Function(_UpdateAssemblyLatLng value)? updateAssemblyLatLng,
    TResult? Function(_LocateButtonPressed value)? locateButtonPressed,
    TResult? Function(_AddImageButtonPressed value)? onAddImageButtonPressed,
    TResult? Function(_RemoveSelectedImage value)? removeSelectedImage,
    TResult? Function(_OnMapReady value)? onMapReady,
    TResult? Function(_OnCheckInButtonPressed value)? onCheckInButtonPressed,
  }) {
    return locateButtonPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadAssemblyLatLng value)? loadAssemblyLatLng,
    TResult Function(_UpdateUserLocation value)? updateUserLocation,
    TResult Function(_UpdateAssemblyLatLng value)? updateAssemblyLatLng,
    TResult Function(_LocateButtonPressed value)? locateButtonPressed,
    TResult Function(_AddImageButtonPressed value)? onAddImageButtonPressed,
    TResult Function(_RemoveSelectedImage value)? removeSelectedImage,
    TResult Function(_OnMapReady value)? onMapReady,
    TResult Function(_OnCheckInButtonPressed value)? onCheckInButtonPressed,
    required TResult orElse(),
  }) {
    if (locateButtonPressed != null) {
      return locateButtonPressed(this);
    }
    return orElse();
  }
}

abstract class _LocateButtonPressed implements CheckInEvent {
  const factory _LocateButtonPressed() = _$LocateButtonPressedImpl;
}

/// @nodoc
abstract class _$$AddImageButtonPressedImplCopyWith<$Res> {
  factory _$$AddImageButtonPressedImplCopyWith(
          _$AddImageButtonPressedImpl value,
          $Res Function(_$AddImageButtonPressedImpl) then) =
      __$$AddImageButtonPressedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AddImageButtonPressedImplCopyWithImpl<$Res>
    extends _$CheckInEventCopyWithImpl<$Res, _$AddImageButtonPressedImpl>
    implements _$$AddImageButtonPressedImplCopyWith<$Res> {
  __$$AddImageButtonPressedImplCopyWithImpl(_$AddImageButtonPressedImpl _value,
      $Res Function(_$AddImageButtonPressedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AddImageButtonPressedImpl
    with DiagnosticableTreeMixin
    implements _AddImageButtonPressed {
  const _$AddImageButtonPressedImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CheckInEvent.onAddImageButtonPressed()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(
        DiagnosticsProperty('type', 'CheckInEvent.onAddImageButtonPressed'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddImageButtonPressedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() loadAssemblyLatLng,
    required TResult Function(LatLng latLng) updateUserLocation,
    required TResult Function(LatLng latLng) updateAssemblyLatLng,
    required TResult Function() locateButtonPressed,
    required TResult Function() onAddImageButtonPressed,
    required TResult Function() removeSelectedImage,
    required TResult Function() onMapReady,
    required TResult Function() onCheckInButtonPressed,
  }) {
    return onAddImageButtonPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? loadAssemblyLatLng,
    TResult? Function(LatLng latLng)? updateUserLocation,
    TResult? Function(LatLng latLng)? updateAssemblyLatLng,
    TResult? Function()? locateButtonPressed,
    TResult? Function()? onAddImageButtonPressed,
    TResult? Function()? removeSelectedImage,
    TResult? Function()? onMapReady,
    TResult? Function()? onCheckInButtonPressed,
  }) {
    return onAddImageButtonPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loadAssemblyLatLng,
    TResult Function(LatLng latLng)? updateUserLocation,
    TResult Function(LatLng latLng)? updateAssemblyLatLng,
    TResult Function()? locateButtonPressed,
    TResult Function()? onAddImageButtonPressed,
    TResult Function()? removeSelectedImage,
    TResult Function()? onMapReady,
    TResult Function()? onCheckInButtonPressed,
    required TResult orElse(),
  }) {
    if (onAddImageButtonPressed != null) {
      return onAddImageButtonPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoadAssemblyLatLng value) loadAssemblyLatLng,
    required TResult Function(_UpdateUserLocation value) updateUserLocation,
    required TResult Function(_UpdateAssemblyLatLng value) updateAssemblyLatLng,
    required TResult Function(_LocateButtonPressed value) locateButtonPressed,
    required TResult Function(_AddImageButtonPressed value)
        onAddImageButtonPressed,
    required TResult Function(_RemoveSelectedImage value) removeSelectedImage,
    required TResult Function(_OnMapReady value) onMapReady,
    required TResult Function(_OnCheckInButtonPressed value)
        onCheckInButtonPressed,
  }) {
    return onAddImageButtonPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoadAssemblyLatLng value)? loadAssemblyLatLng,
    TResult? Function(_UpdateUserLocation value)? updateUserLocation,
    TResult? Function(_UpdateAssemblyLatLng value)? updateAssemblyLatLng,
    TResult? Function(_LocateButtonPressed value)? locateButtonPressed,
    TResult? Function(_AddImageButtonPressed value)? onAddImageButtonPressed,
    TResult? Function(_RemoveSelectedImage value)? removeSelectedImage,
    TResult? Function(_OnMapReady value)? onMapReady,
    TResult? Function(_OnCheckInButtonPressed value)? onCheckInButtonPressed,
  }) {
    return onAddImageButtonPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadAssemblyLatLng value)? loadAssemblyLatLng,
    TResult Function(_UpdateUserLocation value)? updateUserLocation,
    TResult Function(_UpdateAssemblyLatLng value)? updateAssemblyLatLng,
    TResult Function(_LocateButtonPressed value)? locateButtonPressed,
    TResult Function(_AddImageButtonPressed value)? onAddImageButtonPressed,
    TResult Function(_RemoveSelectedImage value)? removeSelectedImage,
    TResult Function(_OnMapReady value)? onMapReady,
    TResult Function(_OnCheckInButtonPressed value)? onCheckInButtonPressed,
    required TResult orElse(),
  }) {
    if (onAddImageButtonPressed != null) {
      return onAddImageButtonPressed(this);
    }
    return orElse();
  }
}

abstract class _AddImageButtonPressed implements CheckInEvent {
  const factory _AddImageButtonPressed() = _$AddImageButtonPressedImpl;
}

/// @nodoc
abstract class _$$RemoveSelectedImageImplCopyWith<$Res> {
  factory _$$RemoveSelectedImageImplCopyWith(_$RemoveSelectedImageImpl value,
          $Res Function(_$RemoveSelectedImageImpl) then) =
      __$$RemoveSelectedImageImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RemoveSelectedImageImplCopyWithImpl<$Res>
    extends _$CheckInEventCopyWithImpl<$Res, _$RemoveSelectedImageImpl>
    implements _$$RemoveSelectedImageImplCopyWith<$Res> {
  __$$RemoveSelectedImageImplCopyWithImpl(_$RemoveSelectedImageImpl _value,
      $Res Function(_$RemoveSelectedImageImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RemoveSelectedImageImpl
    with DiagnosticableTreeMixin
    implements _RemoveSelectedImage {
  const _$RemoveSelectedImageImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CheckInEvent.removeSelectedImage()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'CheckInEvent.removeSelectedImage'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveSelectedImageImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() loadAssemblyLatLng,
    required TResult Function(LatLng latLng) updateUserLocation,
    required TResult Function(LatLng latLng) updateAssemblyLatLng,
    required TResult Function() locateButtonPressed,
    required TResult Function() onAddImageButtonPressed,
    required TResult Function() removeSelectedImage,
    required TResult Function() onMapReady,
    required TResult Function() onCheckInButtonPressed,
  }) {
    return removeSelectedImage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? loadAssemblyLatLng,
    TResult? Function(LatLng latLng)? updateUserLocation,
    TResult? Function(LatLng latLng)? updateAssemblyLatLng,
    TResult? Function()? locateButtonPressed,
    TResult? Function()? onAddImageButtonPressed,
    TResult? Function()? removeSelectedImage,
    TResult? Function()? onMapReady,
    TResult? Function()? onCheckInButtonPressed,
  }) {
    return removeSelectedImage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loadAssemblyLatLng,
    TResult Function(LatLng latLng)? updateUserLocation,
    TResult Function(LatLng latLng)? updateAssemblyLatLng,
    TResult Function()? locateButtonPressed,
    TResult Function()? onAddImageButtonPressed,
    TResult Function()? removeSelectedImage,
    TResult Function()? onMapReady,
    TResult Function()? onCheckInButtonPressed,
    required TResult orElse(),
  }) {
    if (removeSelectedImage != null) {
      return removeSelectedImage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoadAssemblyLatLng value) loadAssemblyLatLng,
    required TResult Function(_UpdateUserLocation value) updateUserLocation,
    required TResult Function(_UpdateAssemblyLatLng value) updateAssemblyLatLng,
    required TResult Function(_LocateButtonPressed value) locateButtonPressed,
    required TResult Function(_AddImageButtonPressed value)
        onAddImageButtonPressed,
    required TResult Function(_RemoveSelectedImage value) removeSelectedImage,
    required TResult Function(_OnMapReady value) onMapReady,
    required TResult Function(_OnCheckInButtonPressed value)
        onCheckInButtonPressed,
  }) {
    return removeSelectedImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoadAssemblyLatLng value)? loadAssemblyLatLng,
    TResult? Function(_UpdateUserLocation value)? updateUserLocation,
    TResult? Function(_UpdateAssemblyLatLng value)? updateAssemblyLatLng,
    TResult? Function(_LocateButtonPressed value)? locateButtonPressed,
    TResult? Function(_AddImageButtonPressed value)? onAddImageButtonPressed,
    TResult? Function(_RemoveSelectedImage value)? removeSelectedImage,
    TResult? Function(_OnMapReady value)? onMapReady,
    TResult? Function(_OnCheckInButtonPressed value)? onCheckInButtonPressed,
  }) {
    return removeSelectedImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadAssemblyLatLng value)? loadAssemblyLatLng,
    TResult Function(_UpdateUserLocation value)? updateUserLocation,
    TResult Function(_UpdateAssemblyLatLng value)? updateAssemblyLatLng,
    TResult Function(_LocateButtonPressed value)? locateButtonPressed,
    TResult Function(_AddImageButtonPressed value)? onAddImageButtonPressed,
    TResult Function(_RemoveSelectedImage value)? removeSelectedImage,
    TResult Function(_OnMapReady value)? onMapReady,
    TResult Function(_OnCheckInButtonPressed value)? onCheckInButtonPressed,
    required TResult orElse(),
  }) {
    if (removeSelectedImage != null) {
      return removeSelectedImage(this);
    }
    return orElse();
  }
}

abstract class _RemoveSelectedImage implements CheckInEvent {
  const factory _RemoveSelectedImage() = _$RemoveSelectedImageImpl;
}

/// @nodoc
abstract class _$$OnMapReadyImplCopyWith<$Res> {
  factory _$$OnMapReadyImplCopyWith(
          _$OnMapReadyImpl value, $Res Function(_$OnMapReadyImpl) then) =
      __$$OnMapReadyImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnMapReadyImplCopyWithImpl<$Res>
    extends _$CheckInEventCopyWithImpl<$Res, _$OnMapReadyImpl>
    implements _$$OnMapReadyImplCopyWith<$Res> {
  __$$OnMapReadyImplCopyWithImpl(
      _$OnMapReadyImpl _value, $Res Function(_$OnMapReadyImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$OnMapReadyImpl with DiagnosticableTreeMixin implements _OnMapReady {
  const _$OnMapReadyImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CheckInEvent.onMapReady()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'CheckInEvent.onMapReady'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OnMapReadyImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() loadAssemblyLatLng,
    required TResult Function(LatLng latLng) updateUserLocation,
    required TResult Function(LatLng latLng) updateAssemblyLatLng,
    required TResult Function() locateButtonPressed,
    required TResult Function() onAddImageButtonPressed,
    required TResult Function() removeSelectedImage,
    required TResult Function() onMapReady,
    required TResult Function() onCheckInButtonPressed,
  }) {
    return onMapReady();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? loadAssemblyLatLng,
    TResult? Function(LatLng latLng)? updateUserLocation,
    TResult? Function(LatLng latLng)? updateAssemblyLatLng,
    TResult? Function()? locateButtonPressed,
    TResult? Function()? onAddImageButtonPressed,
    TResult? Function()? removeSelectedImage,
    TResult? Function()? onMapReady,
    TResult? Function()? onCheckInButtonPressed,
  }) {
    return onMapReady?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loadAssemblyLatLng,
    TResult Function(LatLng latLng)? updateUserLocation,
    TResult Function(LatLng latLng)? updateAssemblyLatLng,
    TResult Function()? locateButtonPressed,
    TResult Function()? onAddImageButtonPressed,
    TResult Function()? removeSelectedImage,
    TResult Function()? onMapReady,
    TResult Function()? onCheckInButtonPressed,
    required TResult orElse(),
  }) {
    if (onMapReady != null) {
      return onMapReady();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoadAssemblyLatLng value) loadAssemblyLatLng,
    required TResult Function(_UpdateUserLocation value) updateUserLocation,
    required TResult Function(_UpdateAssemblyLatLng value) updateAssemblyLatLng,
    required TResult Function(_LocateButtonPressed value) locateButtonPressed,
    required TResult Function(_AddImageButtonPressed value)
        onAddImageButtonPressed,
    required TResult Function(_RemoveSelectedImage value) removeSelectedImage,
    required TResult Function(_OnMapReady value) onMapReady,
    required TResult Function(_OnCheckInButtonPressed value)
        onCheckInButtonPressed,
  }) {
    return onMapReady(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoadAssemblyLatLng value)? loadAssemblyLatLng,
    TResult? Function(_UpdateUserLocation value)? updateUserLocation,
    TResult? Function(_UpdateAssemblyLatLng value)? updateAssemblyLatLng,
    TResult? Function(_LocateButtonPressed value)? locateButtonPressed,
    TResult? Function(_AddImageButtonPressed value)? onAddImageButtonPressed,
    TResult? Function(_RemoveSelectedImage value)? removeSelectedImage,
    TResult? Function(_OnMapReady value)? onMapReady,
    TResult? Function(_OnCheckInButtonPressed value)? onCheckInButtonPressed,
  }) {
    return onMapReady?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadAssemblyLatLng value)? loadAssemblyLatLng,
    TResult Function(_UpdateUserLocation value)? updateUserLocation,
    TResult Function(_UpdateAssemblyLatLng value)? updateAssemblyLatLng,
    TResult Function(_LocateButtonPressed value)? locateButtonPressed,
    TResult Function(_AddImageButtonPressed value)? onAddImageButtonPressed,
    TResult Function(_RemoveSelectedImage value)? removeSelectedImage,
    TResult Function(_OnMapReady value)? onMapReady,
    TResult Function(_OnCheckInButtonPressed value)? onCheckInButtonPressed,
    required TResult orElse(),
  }) {
    if (onMapReady != null) {
      return onMapReady(this);
    }
    return orElse();
  }
}

abstract class _OnMapReady implements CheckInEvent {
  const factory _OnMapReady() = _$OnMapReadyImpl;
}

/// @nodoc
abstract class _$$OnCheckInButtonPressedImplCopyWith<$Res> {
  factory _$$OnCheckInButtonPressedImplCopyWith(
          _$OnCheckInButtonPressedImpl value,
          $Res Function(_$OnCheckInButtonPressedImpl) then) =
      __$$OnCheckInButtonPressedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnCheckInButtonPressedImplCopyWithImpl<$Res>
    extends _$CheckInEventCopyWithImpl<$Res, _$OnCheckInButtonPressedImpl>
    implements _$$OnCheckInButtonPressedImplCopyWith<$Res> {
  __$$OnCheckInButtonPressedImplCopyWithImpl(
      _$OnCheckInButtonPressedImpl _value,
      $Res Function(_$OnCheckInButtonPressedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$OnCheckInButtonPressedImpl
    with DiagnosticableTreeMixin
    implements _OnCheckInButtonPressed {
  const _$OnCheckInButtonPressedImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CheckInEvent.onCheckInButtonPressed()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(
        DiagnosticsProperty('type', 'CheckInEvent.onCheckInButtonPressed'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnCheckInButtonPressedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() loadAssemblyLatLng,
    required TResult Function(LatLng latLng) updateUserLocation,
    required TResult Function(LatLng latLng) updateAssemblyLatLng,
    required TResult Function() locateButtonPressed,
    required TResult Function() onAddImageButtonPressed,
    required TResult Function() removeSelectedImage,
    required TResult Function() onMapReady,
    required TResult Function() onCheckInButtonPressed,
  }) {
    return onCheckInButtonPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? loadAssemblyLatLng,
    TResult? Function(LatLng latLng)? updateUserLocation,
    TResult? Function(LatLng latLng)? updateAssemblyLatLng,
    TResult? Function()? locateButtonPressed,
    TResult? Function()? onAddImageButtonPressed,
    TResult? Function()? removeSelectedImage,
    TResult? Function()? onMapReady,
    TResult? Function()? onCheckInButtonPressed,
  }) {
    return onCheckInButtonPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loadAssemblyLatLng,
    TResult Function(LatLng latLng)? updateUserLocation,
    TResult Function(LatLng latLng)? updateAssemblyLatLng,
    TResult Function()? locateButtonPressed,
    TResult Function()? onAddImageButtonPressed,
    TResult Function()? removeSelectedImage,
    TResult Function()? onMapReady,
    TResult Function()? onCheckInButtonPressed,
    required TResult orElse(),
  }) {
    if (onCheckInButtonPressed != null) {
      return onCheckInButtonPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoadAssemblyLatLng value) loadAssemblyLatLng,
    required TResult Function(_UpdateUserLocation value) updateUserLocation,
    required TResult Function(_UpdateAssemblyLatLng value) updateAssemblyLatLng,
    required TResult Function(_LocateButtonPressed value) locateButtonPressed,
    required TResult Function(_AddImageButtonPressed value)
        onAddImageButtonPressed,
    required TResult Function(_RemoveSelectedImage value) removeSelectedImage,
    required TResult Function(_OnMapReady value) onMapReady,
    required TResult Function(_OnCheckInButtonPressed value)
        onCheckInButtonPressed,
  }) {
    return onCheckInButtonPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoadAssemblyLatLng value)? loadAssemblyLatLng,
    TResult? Function(_UpdateUserLocation value)? updateUserLocation,
    TResult? Function(_UpdateAssemblyLatLng value)? updateAssemblyLatLng,
    TResult? Function(_LocateButtonPressed value)? locateButtonPressed,
    TResult? Function(_AddImageButtonPressed value)? onAddImageButtonPressed,
    TResult? Function(_RemoveSelectedImage value)? removeSelectedImage,
    TResult? Function(_OnMapReady value)? onMapReady,
    TResult? Function(_OnCheckInButtonPressed value)? onCheckInButtonPressed,
  }) {
    return onCheckInButtonPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadAssemblyLatLng value)? loadAssemblyLatLng,
    TResult Function(_UpdateUserLocation value)? updateUserLocation,
    TResult Function(_UpdateAssemblyLatLng value)? updateAssemblyLatLng,
    TResult Function(_LocateButtonPressed value)? locateButtonPressed,
    TResult Function(_AddImageButtonPressed value)? onAddImageButtonPressed,
    TResult Function(_RemoveSelectedImage value)? removeSelectedImage,
    TResult Function(_OnMapReady value)? onMapReady,
    TResult Function(_OnCheckInButtonPressed value)? onCheckInButtonPressed,
    required TResult orElse(),
  }) {
    if (onCheckInButtonPressed != null) {
      return onCheckInButtonPressed(this);
    }
    return orElse();
  }
}

abstract class _OnCheckInButtonPressed implements CheckInEvent {
  const factory _OnCheckInButtonPressed() = _$OnCheckInButtonPressedImpl;
}

/// @nodoc
mixin _$CheckInPageState {
  CheckInPageStateStatus get status => throw _privateConstructorUsedError;
  LatLng? get userLatLng => throw _privateConstructorUsedError;
  LatLng? get assemblyLatLng => throw _privateConstructorUsedError;
  File? get selctedImageFile => throw _privateConstructorUsedError;
  double? get currentDistance => throw _privateConstructorUsedError;
  bool get isWithin => throw _privateConstructorUsedError;
  bool get isMapReady => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CheckInPageStateCopyWith<CheckInPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckInPageStateCopyWith<$Res> {
  factory $CheckInPageStateCopyWith(
          CheckInPageState value, $Res Function(CheckInPageState) then) =
      _$CheckInPageStateCopyWithImpl<$Res, CheckInPageState>;
  @useResult
  $Res call(
      {CheckInPageStateStatus status,
      LatLng? userLatLng,
      LatLng? assemblyLatLng,
      File? selctedImageFile,
      double? currentDistance,
      bool isWithin,
      bool isMapReady});
}

/// @nodoc
class _$CheckInPageStateCopyWithImpl<$Res, $Val extends CheckInPageState>
    implements $CheckInPageStateCopyWith<$Res> {
  _$CheckInPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? userLatLng = freezed,
    Object? assemblyLatLng = freezed,
    Object? selctedImageFile = freezed,
    Object? currentDistance = freezed,
    Object? isWithin = null,
    Object? isMapReady = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CheckInPageStateStatus,
      userLatLng: freezed == userLatLng
          ? _value.userLatLng
          : userLatLng // ignore: cast_nullable_to_non_nullable
              as LatLng?,
      assemblyLatLng: freezed == assemblyLatLng
          ? _value.assemblyLatLng
          : assemblyLatLng // ignore: cast_nullable_to_non_nullable
              as LatLng?,
      selctedImageFile: freezed == selctedImageFile
          ? _value.selctedImageFile
          : selctedImageFile // ignore: cast_nullable_to_non_nullable
              as File?,
      currentDistance: freezed == currentDistance
          ? _value.currentDistance
          : currentDistance // ignore: cast_nullable_to_non_nullable
              as double?,
      isWithin: null == isWithin
          ? _value.isWithin
          : isWithin // ignore: cast_nullable_to_non_nullable
              as bool,
      isMapReady: null == isMapReady
          ? _value.isMapReady
          : isMapReady // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CheckInPageStateImplCopyWith<$Res>
    implements $CheckInPageStateCopyWith<$Res> {
  factory _$$CheckInPageStateImplCopyWith(_$CheckInPageStateImpl value,
          $Res Function(_$CheckInPageStateImpl) then) =
      __$$CheckInPageStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {CheckInPageStateStatus status,
      LatLng? userLatLng,
      LatLng? assemblyLatLng,
      File? selctedImageFile,
      double? currentDistance,
      bool isWithin,
      bool isMapReady});
}

/// @nodoc
class __$$CheckInPageStateImplCopyWithImpl<$Res>
    extends _$CheckInPageStateCopyWithImpl<$Res, _$CheckInPageStateImpl>
    implements _$$CheckInPageStateImplCopyWith<$Res> {
  __$$CheckInPageStateImplCopyWithImpl(_$CheckInPageStateImpl _value,
      $Res Function(_$CheckInPageStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? userLatLng = freezed,
    Object? assemblyLatLng = freezed,
    Object? selctedImageFile = freezed,
    Object? currentDistance = freezed,
    Object? isWithin = null,
    Object? isMapReady = null,
  }) {
    return _then(_$CheckInPageStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CheckInPageStateStatus,
      userLatLng: freezed == userLatLng
          ? _value.userLatLng
          : userLatLng // ignore: cast_nullable_to_non_nullable
              as LatLng?,
      assemblyLatLng: freezed == assemblyLatLng
          ? _value.assemblyLatLng
          : assemblyLatLng // ignore: cast_nullable_to_non_nullable
              as LatLng?,
      selctedImageFile: freezed == selctedImageFile
          ? _value.selctedImageFile
          : selctedImageFile // ignore: cast_nullable_to_non_nullable
              as File?,
      currentDistance: freezed == currentDistance
          ? _value.currentDistance
          : currentDistance // ignore: cast_nullable_to_non_nullable
              as double?,
      isWithin: null == isWithin
          ? _value.isWithin
          : isWithin // ignore: cast_nullable_to_non_nullable
              as bool,
      isMapReady: null == isMapReady
          ? _value.isMapReady
          : isMapReady // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$CheckInPageStateImpl
    with DiagnosticableTreeMixin
    implements _CheckInPageState {
  _$CheckInPageStateImpl(
      {required this.status,
      this.userLatLng,
      this.assemblyLatLng,
      this.selctedImageFile,
      this.currentDistance,
      this.isWithin = false,
      this.isMapReady = false});

  @override
  final CheckInPageStateStatus status;
  @override
  final LatLng? userLatLng;
  @override
  final LatLng? assemblyLatLng;
  @override
  final File? selctedImageFile;
  @override
  final double? currentDistance;
  @override
  @JsonKey()
  final bool isWithin;
  @override
  @JsonKey()
  final bool isMapReady;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CheckInPageState(status: $status, userLatLng: $userLatLng, assemblyLatLng: $assemblyLatLng, selctedImageFile: $selctedImageFile, currentDistance: $currentDistance, isWithin: $isWithin, isMapReady: $isMapReady)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CheckInPageState'))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('userLatLng', userLatLng))
      ..add(DiagnosticsProperty('assemblyLatLng', assemblyLatLng))
      ..add(DiagnosticsProperty('selctedImageFile', selctedImageFile))
      ..add(DiagnosticsProperty('currentDistance', currentDistance))
      ..add(DiagnosticsProperty('isWithin', isWithin))
      ..add(DiagnosticsProperty('isMapReady', isMapReady));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckInPageStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.userLatLng, userLatLng) ||
                other.userLatLng == userLatLng) &&
            (identical(other.assemblyLatLng, assemblyLatLng) ||
                other.assemblyLatLng == assemblyLatLng) &&
            (identical(other.selctedImageFile, selctedImageFile) ||
                other.selctedImageFile == selctedImageFile) &&
            (identical(other.currentDistance, currentDistance) ||
                other.currentDistance == currentDistance) &&
            (identical(other.isWithin, isWithin) ||
                other.isWithin == isWithin) &&
            (identical(other.isMapReady, isMapReady) ||
                other.isMapReady == isMapReady));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, userLatLng,
      assemblyLatLng, selctedImageFile, currentDistance, isWithin, isMapReady);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckInPageStateImplCopyWith<_$CheckInPageStateImpl> get copyWith =>
      __$$CheckInPageStateImplCopyWithImpl<_$CheckInPageStateImpl>(
          this, _$identity);
}

abstract class _CheckInPageState implements CheckInPageState {
  factory _CheckInPageState(
      {required final CheckInPageStateStatus status,
      final LatLng? userLatLng,
      final LatLng? assemblyLatLng,
      final File? selctedImageFile,
      final double? currentDistance,
      final bool isWithin,
      final bool isMapReady}) = _$CheckInPageStateImpl;

  @override
  CheckInPageStateStatus get status;
  @override
  LatLng? get userLatLng;
  @override
  LatLng? get assemblyLatLng;
  @override
  File? get selctedImageFile;
  @override
  double? get currentDistance;
  @override
  bool get isWithin;
  @override
  bool get isMapReady;
  @override
  @JsonKey(ignore: true)
  _$$CheckInPageStateImplCopyWith<_$CheckInPageStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
