// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'remote_message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RemoteMessageModel _$RemoteMessageModelFromJson(Map<String, dynamic> json) {
  return _RemoteMessageModel.fromJson(json);
}

/// @nodoc
mixin _$RemoteMessageModel {
  String get invokeType => throw _privateConstructorUsedError;
  Map<String, dynamic> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RemoteMessageModelCopyWith<RemoteMessageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemoteMessageModelCopyWith<$Res> {
  factory $RemoteMessageModelCopyWith(
          RemoteMessageModel value, $Res Function(RemoteMessageModel) then) =
      _$RemoteMessageModelCopyWithImpl<$Res, RemoteMessageModel>;
  @useResult
  $Res call({String invokeType, Map<String, dynamic> data});
}

/// @nodoc
class _$RemoteMessageModelCopyWithImpl<$Res, $Val extends RemoteMessageModel>
    implements $RemoteMessageModelCopyWith<$Res> {
  _$RemoteMessageModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? invokeType = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      invokeType: null == invokeType
          ? _value.invokeType
          : invokeType // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RemoteMessageModelCopyWith<$Res>
    implements $RemoteMessageModelCopyWith<$Res> {
  factory _$$_RemoteMessageModelCopyWith(_$_RemoteMessageModel value,
          $Res Function(_$_RemoteMessageModel) then) =
      __$$_RemoteMessageModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String invokeType, Map<String, dynamic> data});
}

/// @nodoc
class __$$_RemoteMessageModelCopyWithImpl<$Res>
    extends _$RemoteMessageModelCopyWithImpl<$Res, _$_RemoteMessageModel>
    implements _$$_RemoteMessageModelCopyWith<$Res> {
  __$$_RemoteMessageModelCopyWithImpl(
      _$_RemoteMessageModel _value, $Res Function(_$_RemoteMessageModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? invokeType = null,
    Object? data = null,
  }) {
    return _then(_$_RemoteMessageModel(
      invokeType: null == invokeType
          ? _value.invokeType
          : invokeType // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RemoteMessageModel implements _RemoteMessageModel {
  _$_RemoteMessageModel(
      {required this.invokeType, required final Map<String, dynamic> data})
      : _data = data;

  factory _$_RemoteMessageModel.fromJson(Map<String, dynamic> json) =>
      _$$_RemoteMessageModelFromJson(json);

  @override
  final String invokeType;
  final Map<String, dynamic> _data;
  @override
  Map<String, dynamic> get data {
    if (_data is EqualUnmodifiableMapView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_data);
  }

  @override
  String toString() {
    return 'RemoteMessageModel(invokeType: $invokeType, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RemoteMessageModel &&
            (identical(other.invokeType, invokeType) ||
                other.invokeType == invokeType) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, invokeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RemoteMessageModelCopyWith<_$_RemoteMessageModel> get copyWith =>
      __$$_RemoteMessageModelCopyWithImpl<_$_RemoteMessageModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RemoteMessageModelToJson(
      this,
    );
  }
}

abstract class _RemoteMessageModel implements RemoteMessageModel {
  factory _RemoteMessageModel(
      {required final String invokeType,
      required final Map<String, dynamic> data}) = _$_RemoteMessageModel;

  factory _RemoteMessageModel.fromJson(Map<String, dynamic> json) =
      _$_RemoteMessageModel.fromJson;

  @override
  String get invokeType;
  @override
  Map<String, dynamic> get data;
  @override
  @JsonKey(ignore: true)
  _$$_RemoteMessageModelCopyWith<_$_RemoteMessageModel> get copyWith =>
      throw _privateConstructorUsedError;
}
