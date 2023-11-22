import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:authentication/authentication.dart';
import '../../domain/domain.dart';

part 'biker_info_event.dart';
part 'biker_info_state.dart';

class BikerInfoBloc extends Bloc<BikerInfoEvent, BikerInfoState> {
  final AuthenticationBloc authenticationBloc;
  final BikerInfoRepository repository;

  BikerInfoBloc(
    this.authenticationBloc,
    this.repository,
  ) : super(BikerInfoInitial()) {
    on<GetBikerInfoEvent>(_onGetBikerInfoEvent);
    on<ScheduleCheckOutButtonEvent>(_onScheduleCheckOutButtonEvent);
    authenticationBloc.stream.listen(_onAuthChanged);
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

  void _onAuthChanged(AuthenticationState event) {
    if (event is AuthenticationSuccess) add(GetBikerInfoEvent());
  }

  FutureOr<void> _onScheduleCheckOutButtonEvent(
    ScheduleCheckOutButtonEvent event,
    Emitter<BikerInfoState> emit,
  ) async {
    if (state is BikerInfoReady) {
      final checkInSchedule =(state as BikerInfoReady).bikerInfo.checkInSchedule;
      final isCheckIn = checkInSchedule != null;

      if (isCheckIn) {
        await repository.scheduleCheckOut(checkInSchedule.scheduleId)
          ..onError((error) => event.showCheckOutFail())
          ..onSuccess((data) => event.showCheckOutSuccess());

        this.add(GetBikerInfoEvent());
      }
    }
  }
}
