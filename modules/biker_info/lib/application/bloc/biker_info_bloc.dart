import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:core/core.dart';
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
    authenticationBloc.stream.listen(_onAuthChanged);
  }

  FutureOr<void> _onGetBikerInfoEvent(
    GetBikerInfoEvent event,
    Emitter<BikerInfoState> emit,
  ) async {
    emit(BikerInfoLoading());

    final result = await repository.getInfo();
    if (result is DataSuccess) {
      emit(BikerInfoReady(
        bikerInfo: result.data!,
      ));
    } else {
      emit(BikerInfoError());
    }
  }

  void _onAuthChanged(AuthenticationState event) {
    if(event is AuthenticationSuccess) add(GetBikerInfoEvent());
  }
}
