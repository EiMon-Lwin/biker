import 'package:core/core.dart';
import 'package:domain/domain.dart';

abstract class ScheduleRepository {
  Future<DataState<List<ScheduleEntity>>> getAvailableSchedules();

  Future<DataState<List<ScheduleEntity>>> getNextSchedules();

  Future<DataState<bool>> checkOutSchedule(String scheduleId);

  Future<DataState<bool>> checkInSchedule(String filePath);
}