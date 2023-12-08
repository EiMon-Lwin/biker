// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schedule_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ScheduleModel _$$_ScheduleModelFromJson(Map<String, dynamic> json) =>
    _$_ScheduleModel(
      scheduleDetailId: json['scheduleDetailId'] as String,
      scheduleId: json['scheduleId'] as String,
      scheduleName: json['scheduleName'] as String,
      startSchedule:
          TimeSpanModel.fromJson(json['startSchedule'] as Map<String, dynamic>),
      endSchedule:
          TimeSpanModel.fromJson(json['endSchedule'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ScheduleModelToJson(_$_ScheduleModel instance) =>
    <String, dynamic>{
      'scheduleDetailId': instance.scheduleDetailId,
      'scheduleId': instance.scheduleId,
      'scheduleName': instance.scheduleName,
      'startSchedule': instance.startSchedule,
      'endSchedule': instance.endSchedule,
    };
