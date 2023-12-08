import 'package:core/core.dart';
import 'package:dio/dio.dart';
import 'package:token_jar/token_jar.dart';

import '../../domain/domain.dart';

class SmsRepositoryFakeImpl implements SmsRepository {
  final Dio client;
  final TokenJar tokenJar;

  const SmsRepositoryFakeImpl(this.client, this.tokenJar);

  @override
  Future<DataState<bool>> sendSms({
    required final String message,
    required final String to,
  }) async {
    try {
      return DataSuccess(true);
    } on Exception catch (e) {
      return DataFailed(e);
    }
  }
}
