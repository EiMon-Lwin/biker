import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/domain.dart';
import 'notification.dart';

part 'offline_notification_model.freezed.dart';
part 'offline_notification_model.g.dart';

@freezed
class OfflineNotificationModel extends OfflineNotificationEntity
    with _$OfflineNotificationModel {
  factory OfflineNotificationModel({
    final String? title,
    final String? body,
    final DateTime? date,
    final String? redirectUrl,
    final String? role,
    final String? type,
    final String? jsonData,
    final bool? read,
    @Default(0) final int id,
    @Default("NotificationEntity") final String entityType,
    @Default(false) final bool isRead,
    @Default(false) final bool isHandled,
  }) = _OfflineNotificationModel;

  factory OfflineNotificationModel.fromJson(Map<String, dynamic> json) =>
      _$$_OfflineNotificationModelFromJson(json);

  factory OfflineNotificationModel.parse({
    required int id,
    required String data,
    bool? isRead,
    bool? isHandled,
  }) {
    final notificationModel = NotificationModel.fromJson(json.decode(data));
    return OfflineNotificationModel(
      id: id,
      isRead: isRead == true,
      isHandled: isHandled == true,
      title: notificationModel.title,
      body: notificationModel.body,
      date: notificationModel.date,
      redirectUrl: notificationModel.redirectUrl,
      role: notificationModel.role,
      type: notificationModel.type,
      jsonData: notificationModel.jsonData,
      read: notificationModel.read,
    );
  }

  factory OfflineNotificationModel.fromEntity(OfflineNotificationEntity entity) {
    return OfflineNotificationModel(
      id: entity.id,
      isRead: entity.isRead,
      isHandled: entity.isHandled,
      title: entity.title,
      body: entity.body,
      date: entity.date,
      redirectUrl: entity.redirectUrl,
      role: entity.role,
      type: entity.type,
      jsonData: entity.jsonData,
      read: entity.read,
    );
  }
}
