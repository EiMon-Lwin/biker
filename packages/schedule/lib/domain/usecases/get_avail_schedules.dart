import 'package:core/core.dart';
import 'package:domain/domain.dart';
import 'package:schedule/schedule.dart';

class GetAvailableSchedulesUseCase extends UseCase<DataState<List<ScheduleEntity>>, void> {
  final ScheduleRepository repository;

  const GetAvailableSchedulesUseCase(this.repository);

  @override
  Future<DataState<List<ScheduleEntity>>> call([void params]) {
    return repository.getAvailableSchedules();
  }
} 