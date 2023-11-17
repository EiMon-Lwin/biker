// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'registered_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RegisteredUserModelImpl _$$RegisteredUserModelImplFromJson(
        Map<String, dynamic> json) =>
    _$RegisteredUserModelImpl(
      id: json['id'] as String,
      userName: json['userName'] as String,
      email: json['email'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      fullName: json['fullName'] as String?,
      profileImage: json['profileImage'] as String?,
      userRole: json['userRole'] as String?,
    );

Map<String, dynamic> _$$RegisteredUserModelImplToJson(
        _$RegisteredUserModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userName': instance.userName,
      'email': instance.email,
      'phoneNumber': instance.phoneNumber,
      'fullName': instance.fullName,
      'profileImage': instance.profileImage,
      'userRole': instance.userRole,
    };
