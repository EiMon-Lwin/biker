import 'package:domain/domain.dart';

class ScheduleEntity {
  final String scheduleDetailId;
  final String scheduleId;
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

extension ScheduleEntityExtensions on ScheduleEntity {
  DateTime toDateTime() {
    final dateTime = DateTime.parse(scheduleId);
    return dateTime.copyWith(
      hour: startSchedule.hours.toInt(),
      minute: startSchedule.minutes.toInt(),
    );
  }
}
