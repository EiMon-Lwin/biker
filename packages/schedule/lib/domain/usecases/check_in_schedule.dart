import 'dart:async';

import 'package:core/core.dart';
import 'package:schedule/domain/domain.dart';

class CheckInScheduleUseCase extends UseCase<DataState<bool>, CheckInScheduleParams> {
  final ScheduleRepository repository;
  const CheckInScheduleUseCase(this.repository);

  @override
  FutureOr<DataState<bool>> call(CheckInScheduleParams params) {
    return repository.checkInSchedule(
      filePath: params.filePath,
    );
  }
}

class CheckInScheduleParams {
  final String filePath;

  const CheckInScheduleParams({
    required this.filePath,
  });
}