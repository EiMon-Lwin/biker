// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schedule_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ScheduleModelImpl _$$ScheduleModelImplFromJson(Map<String, dynamic> json) =>
    _$ScheduleModelImpl(
      scheduleDetailId: json['scheduleDetailId'] as String,
      scheduleId: json['scheduleId'] == null
          ? null
          : DateTime.parse(json['scheduleId'] as String),
      scheduleName: json['scheduleName'] as String?,
      startSchedule:
          TimeSpanModel.fromJson(json['startSchedule'] as Map<String, dynamic>),
      endSchedule:
          TimeSpanModel.fromJson(json['endSchedule'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ScheduleModelImplToJson(_$ScheduleModelImpl instance) =>
    <String, dynamic>{
      'scheduleDetailId': instance.scheduleDetailId,
      'scheduleId': instance.scheduleId?.toIso8601String(),
      'scheduleName': instance.scheduleName,
      'startSchedule': instance.startSchedule,
      'endSchedule': instance.endSchedule,
    };
