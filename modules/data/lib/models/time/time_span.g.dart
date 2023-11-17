// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'time_span.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TimeSpanVO _$$_TimeSpanVOFromJson(Map<String, dynamic> json) =>
    _$_TimeSpanVO(
      ticks: json['ticks'] as num,
      days: json['days'] as num,
      hours: json['hours'] as num,
      milliseconds: json['milliseconds'] as num,
      minutes: json['minutes'] as num,
      seconds: json['seconds'] as num,
      totalDays: json['totalDays'] as num,
      totalHours: json['totalHours'] as num,
      totalMilliseconds: json['totalMilliseconds'] as num,
      totalMinutes: json['totalMinutes'] as num,
      totalSeconds: json['totalSeconds'] as num,
    );

Map<String, dynamic> _$$_TimeSpanVOToJson(_$_TimeSpanVO instance) =>
    <String, dynamic>{
      'ticks': instance.ticks,
      'days': instance.days,
      'hours': instance.hours,
      'milliseconds': instance.milliseconds,
      'minutes': instance.minutes,
      'seconds': instance.seconds,
      'totalDays': instance.totalDays,
      'totalHours': instance.totalHours,
      'totalMilliseconds': instance.totalMilliseconds,
      'totalMinutes': instance.totalMinutes,
      'totalSeconds': instance.totalSeconds,
    };
