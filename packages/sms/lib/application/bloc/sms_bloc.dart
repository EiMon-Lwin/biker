import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:core/core.dart';
import 'package:dialog_api/dialog_api.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:localization_api/localization_api.dart';
import 'package:resource_strings/resource_strings.dart';
import 'package:sms/domain/repositories/sms_repository.dart';

part 'sms_event.dart';
part 'sms_state.dart';
part 'sms_bloc.freezed.dart';

class SmsBloc extends Bloc<SmsEvent, SmsState> {
  final ResourceStrings resourceStrings;
  final DialogApi dialogApi;
  final LocalizationApi localizationApi;
  final SmsRepository repository;

  SmsBloc(
    this.repository,
    this.resourceStrings,
    this.localizationApi,
    this.dialogApi,
  ) : super(SmsStateInitial()) {
    on<SmsEvent>(_onSendSms);
  }

  FutureOr<void> _onSendSms(
    SmsEvent event,
    Emitter<SmsState> emit,
  ) async {
    final result = await repository.sendSms(
      message: event.message,
      to: event.to,
    );
    if(result is DataSuccess) {
      emit(SmsState.sent());
      dialogApi.showSnackBar(
        message: localizationApi.tr(resourceStrings.lblFailedToTopUp)
      );
    } else {
      emit(SmsState.error());
      dialogApi.showSnackBar(
        message: localizationApi.tr(resourceStrings.lblFailedToTopUp)
      );
    }
  }
}
