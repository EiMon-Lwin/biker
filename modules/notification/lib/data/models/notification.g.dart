// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NotificationModel _$$_NotificationModelFromJson(Map<String, dynamic> json) =>
    _$_NotificationModel(
      title: json['title'] as String?,
      body: json['body'] as String?,
      date:
          json['date'] == null ? null : DateTime.parse(json['date'] as String),
      redirectUrl: json['redirectUrl'] as String?,
      role: json['role'] as String?,
      type: json['type'] as String?,
      jsonData: json['jsonData'] as String?,
      read: json['read'] as bool?,
    );

Map<String, dynamic> _$$_NotificationModelToJson(
        _$_NotificationModel instance) =>
    <String, dynamic>{
      'title': instance.title,
      'body': instance.body,
      'date': instance.date?.toIso8601String(),
      'redirectUrl': instance.redirectUrl,
      'role': instance.role,
      'type': instance.type,
      'jsonData': instance.jsonData,
      'read': instance.read,
    };
