import 'package:domain/domain.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'time_span.freezed.dart';
part 'time_span.g.dart';

@freezed
class TimeSpanModel extends TimeSpanVO with _$TimeSpanModel {
  factory TimeSpanModel({
    required final num ticks,
    required final num days,
    required final num hours,
    required final num milliseconds,
    required final num minutes,
    required final num seconds,
    required final num totalDays,
    required final num totalHours,
    required final num totalMilliseconds,
    required final num totalMinutes,
    required final num totalSeconds,
  }) = _TimeSpanVO;

  factory TimeSpanModel.fromJson(Map<String, dynamic> json) =>
      _TimeSpanVO.fromJson(json);

  factory TimeSpanModel.fromEntity(TimeSpanVO object) => TimeSpanModel(
        ticks: object.ticks,
        days: object.days,
        hours: object.hours,
        milliseconds: object.milliseconds,
        minutes: object.minutes,
        seconds: object.seconds,
        totalDays: object.totalDays,
        totalHours: object.totalHours,
        totalMilliseconds: object.totalMilliseconds,
        totalMinutes: object.totalMinutes,
        totalSeconds: object.totalSeconds,
      );
}
