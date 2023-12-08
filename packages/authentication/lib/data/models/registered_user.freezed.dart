// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'registered_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RegisteredUserModel _$RegisteredUserModelFromJson(Map<String, dynamic> json) {
  return _RegisteredUserModel.fromJson(json);
}

/// @nodoc
mixin _$RegisteredUserModel {
  @JsonKey(name: "id")
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: "userName")
  String get userName => throw _privateConstructorUsedError;
  @JsonKey(name: "email")
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: "phoneNumber")
  String? get phoneNumber => throw _privateConstructorUsedError;
  @JsonKey(name: "fullName")
  String? get fullName => throw _privateConstructorUsedError;
  @JsonKey(name: "profileImage")
  String? get profileImage => throw _privateConstructorUsedError;
  @JsonKey(name: "userRole")
  String? get userRole => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegisteredUserModelCopyWith<RegisteredUserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisteredUserModelCopyWith<$Res> {
  factory $RegisteredUserModelCopyWith(
          RegisteredUserModel value, $Res Function(RegisteredUserModel) then) =
      _$RegisteredUserModelCopyWithImpl<$Res, RegisteredUserModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") String id,
      @JsonKey(name: "userName") String userName,
      @JsonKey(name: "email") String? email,
      @JsonKey(name: "phoneNumber") String? phoneNumber,
      @JsonKey(name: "fullName") String? fullName,
      @JsonKey(name: "profileImage") String? profileImage,
      @JsonKey(name: "userRole") String? userRole});
}

/// @nodoc
class _$RegisteredUserModelCopyWithImpl<$Res, $Val extends RegisteredUserModel>
    implements $RegisteredUserModelCopyWith<$Res> {
  _$RegisteredUserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userName = null,
    Object? email = freezed,
    Object? phoneNumber = freezed,
    Object? fullName = freezed,
    Object? profileImage = freezed,
    Object? userRole = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      profileImage: freezed == profileImage
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as String?,
      userRole: freezed == userRole
          ? _value.userRole
          : userRole // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RegisteredUserModelImplCopyWith<$Res>
    implements $RegisteredUserModelCopyWith<$Res> {
  factory _$$RegisteredUserModelImplCopyWith(_$RegisteredUserModelImpl value,
          $Res Function(_$RegisteredUserModelImpl) then) =
      __$$RegisteredUserModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") String id,
      @JsonKey(name: "userName") String userName,
      @JsonKey(name: "email") String? email,
      @JsonKey(name: "phoneNumber") String? phoneNumber,
      @JsonKey(name: "fullName") String? fullName,
      @JsonKey(name: "profileImage") String? profileImage,
      @JsonKey(name: "userRole") String? userRole});
}

/// @nodoc
class __$$RegisteredUserModelImplCopyWithImpl<$Res>
    extends _$RegisteredUserModelCopyWithImpl<$Res, _$RegisteredUserModelImpl>
    implements _$$RegisteredUserModelImplCopyWith<$Res> {
  __$$RegisteredUserModelImplCopyWithImpl(_$RegisteredUserModelImpl _value,
      $Res Function(_$RegisteredUserModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userName = null,
    Object? email = freezed,
    Object? phoneNumber = freezed,
    Object? fullName = freezed,
    Object? profileImage = freezed,
    Object? userRole = freezed,
  }) {
    return _then(_$RegisteredUserModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      profileImage: freezed == profileImage
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as String?,
      userRole: freezed == userRole
          ? _value.userRole
          : userRole // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RegisteredUserModelImpl implements _RegisteredUserModel {
  const _$RegisteredUserModelImpl(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "userName") required this.userName,
      @JsonKey(name: "email") this.email,
      @JsonKey(name: "phoneNumber") this.phoneNumber,
      @JsonKey(name: "fullName") this.fullName,
      @JsonKey(name: "profileImage") this.profileImage,
      @JsonKey(name: "userRole") this.userRole});

  factory _$RegisteredUserModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RegisteredUserModelImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final String id;
  @override
  @JsonKey(name: "userName")
  final String userName;
  @override
  @JsonKey(name: "email")
  final String? email;
  @override
  @JsonKey(name: "phoneNumber")
  final String? phoneNumber;
  @override
  @JsonKey(name: "fullName")
  final String? fullName;
  @override
  @JsonKey(name: "profileImage")
  final String? profileImage;
  @override
  @JsonKey(name: "userRole")
  final String? userRole;

  @override
  String toString() {
    return 'RegisteredUserModel(id: $id, userName: $userName, email: $email, phoneNumber: $phoneNumber, fullName: $fullName, profileImage: $profileImage, userRole: $userRole)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisteredUserModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.profileImage, profileImage) ||
                other.profileImage == profileImage) &&
            (identical(other.userRole, userRole) ||
                other.userRole == userRole));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, userName, email, phoneNumber,
      fullName, profileImage, userRole);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisteredUserModelImplCopyWith<_$RegisteredUserModelImpl> get copyWith =>
      __$$RegisteredUserModelImplCopyWithImpl<_$RegisteredUserModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RegisteredUserModelImplToJson(
      this,
    );
  }
}

abstract class _RegisteredUserModel implements RegisteredUserModel {
  const factory _RegisteredUserModel(
          {@JsonKey(name: "id") required final String id,
          @JsonKey(name: "userName") required final String userName,
          @JsonKey(name: "email") final String? email,
          @JsonKey(name: "phoneNumber") final String? phoneNumber,
          @JsonKey(name: "fullName") final String? fullName,
          @JsonKey(name: "profileImage") final String? profileImage,
          @JsonKey(name: "userRole") final String? userRole}) =
      _$RegisteredUserModelImpl;

  factory _RegisteredUserModel.fromJson(Map<String, dynamic> json) =
      _$RegisteredUserModelImpl.fromJson;

  @override
  @JsonKey(name: "id")
  String get id;
  @override
  @JsonKey(name: "userName")
  String get userName;
  @override
  @JsonKey(name: "email")
  String? get email;
  @override
  @JsonKey(name: "phoneNumber")
  String? get phoneNumber;
  @override
  @JsonKey(name: "fullName")
  String? get fullName;
  @override
  @JsonKey(name: "profileImage")
  String? get profileImage;
  @override
  @JsonKey(name: "userRole")
  String? get userRole;
  @override
  @JsonKey(ignore: true)
  _$$RegisteredUserModelImplCopyWith<_$RegisteredUserModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
