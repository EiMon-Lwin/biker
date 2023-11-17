import 'package:domain/domain.dart';

class ScheduleEntity {
  final String scheduleDetailId;
  final DateTime scheduleId;
  final String scheduleName;
  final TimeSpanVO startSchedule;
  final TimeSpanVO endSchedule;

  const ScheduleEntity({
    required this.scheduleDetailId,
    required this.scheduleId,
    required this.scheduleName,
    required this.startSchedule,
    required this.endSchedule,
  });
}
