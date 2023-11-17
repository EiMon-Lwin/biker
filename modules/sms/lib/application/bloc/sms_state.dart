part of 'sms_bloc.dart';

@freezed
class SmsState with _$SmsState {
  const factory SmsState.initial() = SmsStateInitial;
  const factory SmsState.sending() = SmsStateSending;
  const factory SmsState.error() = SmsStateError;
  const factory SmsState.sent() = SmsStateSent;
}
