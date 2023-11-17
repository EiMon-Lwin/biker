// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'access_token.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AccessTokenModel _$AccessTokenModelFromJson(Map<String, dynamic> json) {
  return _AccessTokenModel.fromJson(json);
}

/// @nodoc
mixin _$AccessTokenModel {
  @JsonKey(name: "access_token")
  String get accessToken => throw _privateConstructorUsedError;
  @JsonKey(name: "refresh_token")
  String get refreshToken => throw _privateConstructorUsedError;
  @JsonKey(name: "expiration")
  int get expirationDays => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AccessTokenModelCopyWith<AccessTokenModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccessTokenModelCopyWith<$Res> {
  factory $AccessTokenModelCopyWith(
          AccessTokenModel value, $Res Function(AccessTokenModel) then) =
      _$AccessTokenModelCopyWithImpl<$Res, AccessTokenModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "access_token") String accessToken,
      @JsonKey(name: "refresh_token") String refreshToken,
      @JsonKey(name: "expiration") int expirationDays});
}

/// @nodoc
class _$AccessTokenModelCopyWithImpl<$Res, $Val extends AccessTokenModel>
    implements $AccessTokenModelCopyWith<$Res> {
  _$AccessTokenModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
    Object? refreshToken = null,
    Object? expirationDays = null,
  }) {
    return _then(_value.copyWith(
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
      expirationDays: null == expirationDays
          ? _value.expirationDays
          : expirationDays // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AccessTokenModelImplCopyWith<$Res>
    implements $AccessTokenModelCopyWith<$Res> {
  factory _$$AccessTokenModelImplCopyWith(_$AccessTokenModelImpl value,
          $Res Function(_$AccessTokenModelImpl) then) =
      __$$AccessTokenModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "access_token") String accessToken,
      @JsonKey(name: "refresh_token") String refreshToken,
      @JsonKey(name: "expiration") int expirationDays});
}

/// @nodoc
class __$$AccessTokenModelImplCopyWithImpl<$Res>
    extends _$AccessTokenModelCopyWithImpl<$Res, _$AccessTokenModelImpl>
    implements _$$AccessTokenModelImplCopyWith<$Res> {
  __$$AccessTokenModelImplCopyWithImpl(_$AccessTokenModelImpl _value,
      $Res Function(_$AccessTokenModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
    Object? refreshToken = null,
    Object? expirationDays = null,
  }) {
    return _then(_$AccessTokenModelImpl(
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
      expirationDays: null == expirationDays
          ? _value.expirationDays
          : expirationDays // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AccessTokenModelImpl implements _AccessTokenModel {
  const _$AccessTokenModelImpl(
      {@JsonKey(name: "access_token") required this.accessToken,
      @JsonKey(name: "refresh_token") required this.refreshToken,
      @JsonKey(name: "expiration") required this.expirationDays});

  factory _$AccessTokenModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AccessTokenModelImplFromJson(json);

  @override
  @JsonKey(name: "access_token")
  final String accessToken;
  @override
  @JsonKey(name: "refresh_token")
  final String refreshToken;
  @override
  @JsonKey(name: "expiration")
  final int expirationDays;

  @override
  String toString() {
    return 'AccessTokenModel(accessToken: $accessToken, refreshToken: $refreshToken, expirationDays: $expirationDays)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccessTokenModelImpl &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken) &&
            (identical(other.expirationDays, expirationDays) ||
                other.expirationDays == expirationDays));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, accessToken, refreshToken, expirationDays);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AccessTokenModelImplCopyWith<_$AccessTokenModelImpl> get copyWith =>
      __$$AccessTokenModelImplCopyWithImpl<_$AccessTokenModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AccessTokenModelImplToJson(
      this,
    );
  }
}

abstract class _AccessTokenModel implements AccessTokenModel {
  const factory _AccessTokenModel(
          {@JsonKey(name: "access_token") required final String accessToken,
          @JsonKey(name: "refresh_token") required final String refreshToken,
          @JsonKey(name: "expiration") required final int expirationDays}) =
      _$AccessTokenModelImpl;

  factory _AccessTokenModel.fromJson(Map<String, dynamic> json) =
      _$AccessTokenModelImpl.fromJson;

  @override
  @JsonKey(name: "access_token")
  String get accessToken;
  @override
  @JsonKey(name: "refresh_token")
  String get refreshToken;
  @override
  @JsonKey(name: "expiration")
  int get expirationDays;
  @override
  @JsonKey(ignore: true)
  _$$AccessTokenModelImplCopyWith<_$AccessTokenModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
