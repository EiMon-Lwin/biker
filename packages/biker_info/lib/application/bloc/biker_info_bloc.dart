import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:schedule/application/schedule_bloc/schedule_bloc.dart';
import '../../domain/domain.dart';

part 'biker_info_event.dart';
part 'biker_info_state.dart';

class BikerInfoBloc extends Bloc<BikerInfoEvent, BikerInfoState> {
  final BikerInfoRepository repository;
  final ScheduleBloc scheduleBloc;

  BikerInfoBloc(
    this.repository,
    this.scheduleBloc,
  ) : super(BikerInfoInitial()) {
    on<GetBikerInfoEvent>(_onGetBikerInfoEvent);
  }

  FutureOr<void> _onGetBikerInfoEvent(
    GetBikerInfoEvent event,
    Emitter<BikerInfoState> emit,
  ) async {
    emit(BikerInfoLoading());

    await repository.getInfo()
      ..onError((error) => emit(BikerInfoError()))
      ..onSuccess((data) => emit(BikerInfoReady(bikerInfo: data)));
  }
}
