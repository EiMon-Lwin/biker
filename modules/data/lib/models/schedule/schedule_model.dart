import 'package:data/data.dart';
import 'package:domain/domain.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'schedule_model.freezed.dart';
part 'schedule_model.g.dart';

@freezed
class ScheduleModel extends ScheduleEntity with _$ScheduleModel {
  factory ScheduleModel({
    required final String scheduleDetailId,
    final DateTime? scheduleId,
    final String? scheduleName,
    required final TimeSpanModel startSchedule,
    required final TimeSpanModel endSchedule,
  }) = _ScheduleModel;

  factory ScheduleModel.fromJson(Map<String, dynamic> json) =>
      _$ScheduleModelFromJson(json);
}
