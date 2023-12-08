// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authenticated_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthenticatedUserModelImpl _$$AuthenticatedUserModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AuthenticatedUserModelImpl(
      accessToken: json['access_token'] as String,
      refreshToken: json['refresh_token'] as String,
      expirationDays: json['expiration'] as int,
      user: RegisteredUserModel.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AuthenticatedUserModelImplToJson(
        _$AuthenticatedUserModelImpl instance) =>
    <String, dynamic>{
      'access_token': instance.accessToken,
      'refresh_token': instance.refreshToken,
      'expiration': instance.expirationDays,
      'user': instance.user,
    };
