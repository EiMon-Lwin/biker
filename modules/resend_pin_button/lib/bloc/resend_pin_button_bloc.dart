import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'resend_pin_button_event.dart';
part 'resend_pin_button_state.dart';
part 'resend_pin_button_bloc.freezed.dart';

class ResendPinButtonBloc extends Bloc<ResendPinButtonEvent, ResendPinButtonState> {
  final Duration tickInterval;
  final Duration timeOutDuration;
  final Duration resendDuration;
  
  ResendPinButtonBloc({
    this.tickInterval = const Duration(seconds: 1),
    this.timeOutDuration = const Duration(seconds: 120),
    this.resendDuration = const Duration(seconds: 60),
  }) 
   : super(ResendPinButtonState.initial(0)) {
    assert(timeOutDuration >  resendDuration && tickInterval < resendDuration );
    on<StartButtonEvent>(_onStartButtonEvent);
    on<StopButtonEvent>(_onStopButtonEvent);
    on<ResendPinButtonEvent>(_onResetButtonEvent);
  }

  // Timer? _timer;
  
  FutureOr<void> _onStartButtonEvent(
    StartButtonEvent event,
    Emitter<ResendPinButtonState> emit,
  ) async {
    emit(ResendPinButtonState.running(0));
    // Timer.periodic(tickInterval, (timer) {
    //   final ticks = timer.tick;
    //   final currentDuration = tickInterval * ticks;
      
    //   if(currentDuration > timeOutDuration) {
    //     _timer?.cancel();
    //     emit(ResendPinButtonState.timeOut(ticks));
    //   } else if(currentDuration > resendDuration) {
    //     emit(ResendPinButtonState.resend(ticks));
    //   } else {
    //     emit(ResendPinButtonState.running(ticks));
    //   }
    // });
  }

  FutureOr<void> _onStopButtonEvent(StopButtonEvent event, Emitter<ResendPinButtonState> emit) {
    emit(ResendPinButtonState.initial(0));
  }

  FutureOr<void> _onResetButtonEvent(
    ResendPinButtonEvent event,
    Emitter<ResendPinButtonState> emit,
  ) async {
    emit(ResendPinButtonState.resend(0));
  }
}
