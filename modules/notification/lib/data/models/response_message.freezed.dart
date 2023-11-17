// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response_message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ResponseMessageModel _$ResponseMessageModelFromJson(Map<String, dynamic> json) {
  return _ResponseMessageModel.fromJson(json);
}

/// @nodoc
mixin _$ResponseMessageModel {
  String get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResponseMessageModelCopyWith<ResponseMessageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseMessageModelCopyWith<$Res> {
  factory $ResponseMessageModelCopyWith(ResponseMessageModel value,
          $Res Function(ResponseMessageModel) then) =
      _$ResponseMessageModelCopyWithImpl<$Res, ResponseMessageModel>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$ResponseMessageModelCopyWithImpl<$Res,
        $Val extends ResponseMessageModel>
    implements $ResponseMessageModelCopyWith<$Res> {
  _$ResponseMessageModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ResponseMessageModelCopyWith<$Res>
    implements $ResponseMessageModelCopyWith<$Res> {
  factory _$$_ResponseMessageModelCopyWith(_$_ResponseMessageModel value,
          $Res Function(_$_ResponseMessageModel) then) =
      __$$_ResponseMessageModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_ResponseMessageModelCopyWithImpl<$Res>
    extends _$ResponseMessageModelCopyWithImpl<$Res, _$_ResponseMessageModel>
    implements _$$_ResponseMessageModelCopyWith<$Res> {
  __$$_ResponseMessageModelCopyWithImpl(_$_ResponseMessageModel _value,
      $Res Function(_$_ResponseMessageModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_ResponseMessageModel(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ResponseMessageModel implements _ResponseMessageModel {
  _$_ResponseMessageModel({required this.message});

  factory _$_ResponseMessageModel.fromJson(Map<String, dynamic> json) =>
      _$$_ResponseMessageModelFromJson(json);

  @override
  final String message;

  @override
  String toString() {
    return 'ResponseMessageModel(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ResponseMessageModel &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ResponseMessageModelCopyWith<_$_ResponseMessageModel> get copyWith =>
      __$$_ResponseMessageModelCopyWithImpl<_$_ResponseMessageModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResponseMessageModelToJson(
      this,
    );
  }
}

abstract class _ResponseMessageModel implements ResponseMessageModel {
  factory _ResponseMessageModel({required final String message}) =
      _$_ResponseMessageModel;

  factory _ResponseMessageModel.fromJson(Map<String, dynamic> json) =
      _$_ResponseMessageModel.fromJson;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_ResponseMessageModelCopyWith<_$_ResponseMessageModel> get copyWith =>
      throw _privateConstructorUsedError;
}
