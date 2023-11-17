// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'access_token.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AccessTokenModelImpl _$$AccessTokenModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AccessTokenModelImpl(
      accessToken: json['access_token'] as String,
      refreshToken: json['refresh_token'] as String,
      expirationDays: json['expiration'] as int,
    );

Map<String, dynamic> _$$AccessTokenModelImplToJson(
        _$AccessTokenModelImpl instance) =>
    <String, dynamic>{
      'access_token': instance.accessToken,
      'refresh_token': instance.refreshToken,
      'expiration': instance.expirationDays,
    };
