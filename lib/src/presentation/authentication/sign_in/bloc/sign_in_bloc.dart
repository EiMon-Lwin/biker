import 'dart:async';

import 'package:biker/src/utils/pin_code_generate.dart';
import 'package:bloc/bloc.dart';
import 'package:colorize/colorize.dart';
import 'package:flutter/foundation.dart';
import 'package:authentication/authentication.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:resend_pin_button/bloc/resend_pin_button_bloc.dart';
import 'package:sms/application/bloc/sms_bloc.dart';

part 'sign_in_event.dart';
part 'sign_in_state.dart';
part 'sign_in_bloc.freezed.dart';

class SignInBloc extends Bloc<SignInEvent, SignInState> {
  final ResendPinButtonBloc resendPinButtonBloc;
  final SmsBloc smsBloc;
  final AuthenticationBloc authenticationBloc;
  final String phoneNumber;
  final Future<void> Function() showSignInFailedAlert;
  final Future<void> Function() showWrongPinAlert;

  late StreamSubscription<SmsState> smsBlocSub;

  SignInBloc(
    this.resendPinButtonBloc,
    this.smsBloc,
    this.authenticationBloc, {
    required this.phoneNumber,
    required this.showSignInFailedAlert,
    required this.showWrongPinAlert,
  }) : super(const SignInStatInitial()) {
    on<_SendPinCode>(_onSendPinCode);
    on<_SendingPinCodeFailed>(_onSendingPinCodeFailed);
    on<_VerifyPinCode>(_onVerifyPinCode);
    smsBlocSub = smsBloc.stream.listen(_onSmsStateChanged);
  }

  late final pinCodeFieldController = TextEditingController();

  FutureOr<void> _onVerifyPinCode(
    _VerifyPinCode event,
    Emitter<SignInState> emit,
  ) async {
    if (event.pin == _currentPinCode) {
      authenticationBloc.add(AuthenticateUserEvent(
        phoneNumber: "09$phoneNumber",
      ));
    } else {
      showWrongPinAlert();
    }
  }

  String? _currentPinCode;
  FutureOr<void> _onSendPinCode(
    _SendPinCode event,
    Emitter<SignInState> emit,
  ) async {
    _currentPinCode = generatePINCode();
    if (kDebugMode) {
      print(
        Colorize(_currentPinCode.toString()).green().bgBlack(),
      );
    }

    smsBloc.add(
      SendSmsEvent(
        message: _currentPinCode!,
        to: phoneNumber,
      ),
    );
  }

  void _onSmsStateChanged(SmsState event) {
    if (event is SmsStateSending) {
      add(const SignInEvent.sendPinCode());
    }

    if (event is SmsStateError) {
      add(const SignInEvent.sendingFailed());
      resendPinButtonBloc.add(const ResetButtonEvent());
    }

    if (event is SmsStateSent) {
      resendPinButtonBloc.add(const StartButtonEvent());
    }
  }

  FutureOr<void> _onSendingPinCodeFailed(
    _SendingPinCodeFailed event,
    Emitter<SignInState> emit,
  ) async {
    emit(SignInState.failed(_currentPinCode!));
  }
}
