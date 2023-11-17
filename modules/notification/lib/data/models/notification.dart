import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/domain.dart';

part 'notification.freezed.dart';
part 'notification.g.dart';

@freezed
class NotificationModel extends NotificationEntity with _$NotificationModel {
  factory NotificationModel({
    final String? title,
    final String? body,
    final DateTime? date,
    final String? redirectUrl,
    final String? role,
    final String? type,
    final String? jsonData,
    final bool? read,
  }) = _NotificationModel;

  factory NotificationModel.fromJson(Map<String, dynamic> json) =>
      _$$_NotificationModelFromJson(json);

  factory NotificationModel.fromEntity(NotificationEntity entity) {
    return NotificationModel(
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


  static NotificationModel fromRemoteMessage(List<Object?>? data) {
    return NotificationModel.fromJson(data!.first! as Map<String, dynamic>);
  }
}
