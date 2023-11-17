import 'package:core/core.dart';

abstract class SmsRepository {
  Future<DataState<bool>> sendSms({
    required final String message,
    required final String to,
  });
}