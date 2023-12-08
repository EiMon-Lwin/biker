part of 'sms_bloc.dart';

@freezed
class SmsEvent with _$SmsEvent {
  const factory SmsEvent.sendSms({required String message, required String to}) = SendSmsEvent;
}