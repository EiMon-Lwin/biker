// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'offline_notification_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OfflineNotificationModel _$$_OfflineNotificationModelFromJson(
        Map<String, dynamic> json) =>
    _$_OfflineNotificationModel(
      title: json['title'] as String?,
      body: json['body'] as String?,
      date:
          json['date'] == null ? null : DateTime.parse(json['date'] as String),
      redirectUrl: json['redirectUrl'] as String?,
      role: json['role'] as String?,
      type: json['type'] as String?,
      jsonData: json['jsonData'] as String?,
      read: json['read'] as bool?,
      id: json['id'] as int? ?? 0,
      entityType: json['entityType'] as String? ?? "NotificationEntity",
      isRead: json['isRead'] as bool? ?? false,
      isHandled: json['isHandled'] as bool? ?? false,
    );

Map<String, dynamic> _$$_OfflineNotificationModelToJson(
        _$_OfflineNotificationModel instance) =>
    <String, dynamic>{
      'title': instance.title,
      'body': instance.body,
      'date': instance.date?.toIso8601String(),
      'redirectUrl': instance.redirectUrl,
      'role': instance.role,
      'type': instance.type,
      'jsonData': instance.jsonData,
      'read': instance.read,
      'id': instance.id,
      'entityType': instance.entityType,
      'isRead': instance.isRead,
      'isHandled': instance.isHandled,
    };
