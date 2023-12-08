// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'authenticated_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AuthenticatedUserModel _$AuthenticatedUserModelFromJson(
    Map<String, dynamic> json) {
  return _AuthenticatedUserModel.fromJson(json);
}

/// @nodoc
mixin _$AuthenticatedUserModel {
  @JsonKey(name: "access_token")
  String get accessToken => throw _privateConstructorUsedError;
  @JsonKey(name: "refresh_token")
  String get refreshToken => throw _privateConstructorUsedError;
  @JsonKey(name: "expiration")
  int get expirationDays => throw _privateConstructorUsedError;
  @JsonKey(name: "user")
  RegisteredUserModel get user => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthenticatedUserModelCopyWith<AuthenticatedUserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticatedUserModelCopyWith<$Res> {
  factory $AuthenticatedUserModelCopyWith(AuthenticatedUserModel value,
          $Res Function(AuthenticatedUserModel) then) =
      _$AuthenticatedUserModelCopyWithImpl<$Res, AuthenticatedUserModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "access_token") String accessToken,
      @JsonKey(name: "refresh_token") String refreshToken,
      @JsonKey(name: "expiration") int expirationDays,
      @JsonKey(name: "user") RegisteredUserModel user});

  $RegisteredUserModelCopyWith<$Res> get user;
}

/// @nodoc
class _$AuthenticatedUserModelCopyWithImpl<$Res,
        $Val extends AuthenticatedUserModel>
    implements $AuthenticatedUserModelCopyWith<$Res> {
  _$AuthenticatedUserModelCopyWithImpl(this._value, this._then);

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
    Object? user = null,
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
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as RegisteredUserModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RegisteredUserModelCopyWith<$Res> get user {
    return $RegisteredUserModelCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AuthenticatedUserModelImplCopyWith<$Res>
    implements $AuthenticatedUserModelCopyWith<$Res> {
  factory _$$AuthenticatedUserModelImplCopyWith(
          _$AuthenticatedUserModelImpl value,
          $Res Function(_$AuthenticatedUserModelImpl) then) =
      __$$AuthenticatedUserModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "access_token") String accessToken,
      @JsonKey(name: "refresh_token") String refreshToken,
      @JsonKey(name: "expiration") int expirationDays,
      @JsonKey(name: "user") RegisteredUserModel user});

  @override
  $RegisteredUserModelCopyWith<$Res> get user;
}

/// @nodoc
class __$$AuthenticatedUserModelImplCopyWithImpl<$Res>
    extends _$AuthenticatedUserModelCopyWithImpl<$Res,
        _$AuthenticatedUserModelImpl>
    implements _$$AuthenticatedUserModelImplCopyWith<$Res> {
  __$$AuthenticatedUserModelImplCopyWithImpl(
      _$AuthenticatedUserModelImpl _value,
      $Res Function(_$AuthenticatedUserModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
    Object? refreshToken = null,
    Object? expirationDays = null,
    Object? user = null,
  }) {
    return _then(_$AuthenticatedUserModelImpl(
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
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as RegisteredUserModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthenticatedUserModelImpl implements _AuthenticatedUserModel {
  const _$AuthenticatedUserModelImpl(
      {@JsonKey(name: "access_token") required this.accessToken,
      @JsonKey(name: "refresh_token") required this.refreshToken,
      @JsonKey(name: "expiration") required this.expirationDays,
      @JsonKey(name: "user") required this.user});

  factory _$AuthenticatedUserModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthenticatedUserModelImplFromJson(json);

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
  @JsonKey(name: "user")
  final RegisteredUserModel user;

  @override
  String toString() {
    return 'AuthenticatedUserModel(accessToken: $accessToken, refreshToken: $refreshToken, expirationDays: $expirationDays, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticatedUserModelImpl &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken) &&
            (identical(other.expirationDays, expirationDays) ||
                other.expirationDays == expirationDays) &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, accessToken, refreshToken, expirationDays, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthenticatedUserModelImplCopyWith<_$AuthenticatedUserModelImpl>
      get copyWith => __$$AuthenticatedUserModelImplCopyWithImpl<
          _$AuthenticatedUserModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthenticatedUserModelImplToJson(
      this,
    );
  }
}

abstract class _AuthenticatedUserModel implements AuthenticatedUserModel {
  const factory _AuthenticatedUserModel(
          {@JsonKey(name: "access_token") required final String accessToken,
          @JsonKey(name: "refresh_token") required final String refreshToken,
          @JsonKey(name: "expiration") required final int expirationDays,
          @JsonKey(name: "user") required final RegisteredUserModel user}) =
      _$AuthenticatedUserModelImpl;

  factory _AuthenticatedUserModel.fromJson(Map<String, dynamic> json) =
      _$AuthenticatedUserModelImpl.fromJson;

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
  @JsonKey(name: "user")
  RegisteredUserModel get user;
  @override
  @JsonKey(ignore: true)
  _$$AuthenticatedUserModelImplCopyWith<_$AuthenticatedUserModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
