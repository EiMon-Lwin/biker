import 'package:core/core.dart';
import 'package:domain/domain.dart';
import 'package:schedule/schedule.dart';

class GetNextSchedulesUseCase extends UseCase<DataState<List<ScheduleEntity>>, void> {
  final ScheduleRepository repository;

  const GetNextSchedulesUseCase(this.repository);

  @override
  Future<DataState<List<ScheduleEntity>>> call([void params]) {
    return repository.getNextSchedules();
  }
} 