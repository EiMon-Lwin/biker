import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/resend_pin_button_bloc.dart';

class ResendPinButton extends StatelessWidget {
  final ResendPinButtonBloc bloc;
  final Widget Function(ResendPinButtonInitial) initialBuilder;
  final Widget Function(ResendPinButtonResend) resendBuilder;
  final Widget Function(ResendPinButtonTimeOut) timeoutBuilder;
  final Widget Function(ResendPinButtonRunning) runningBuilder;

  const ResendPinButton({
    super.key,
    required this.bloc,
    required this.initialBuilder,
    required this.resendBuilder,
    required this.timeoutBuilder,
    required this.runningBuilder,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ResendPinButtonBloc, ResendPinButtonState>(
      bloc: bloc,
      builder: (context, state) {
        print(state.runtimeType.toString());
        if(state is ResendPinButtonRunning) return runningBuilder(state); 
        if(state is ResendPinButtonResend) return resendBuilder(state);
        if(state is ResendPinButtonTimeOut) return timeoutBuilder(state);
        return initialBuilder(state as ResendPinButtonInitial);
      },
    );
  }
}
