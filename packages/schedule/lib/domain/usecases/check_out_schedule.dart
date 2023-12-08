import 'dart:async';

import 'package:core/core.dart';
import 'package:schedule/domain/domain.dart';

class CheckOutScheduleUseCase extends UseCase<DataState<bool>, CheckOutScheduleParams> {
  final ScheduleRepository repository;
  const CheckOutScheduleUseCase(this.repository);

  @override
  FutureOr<DataState<bool>> call(CheckOutScheduleParams params) {
    return repository.checkOutSchedule(params.scheduleId);
  }
}

class CheckOutScheduleParams {
  final String scheduleId;

  const CheckOutScheduleParams({required this.scheduleId});
}

  // Future<DataState<bool>> checkOutSchedule(String scheduleId);
