import 'package:core/core.dart';
import 'package:dio/dio.dart';
import 'package:token_jar/token_jar.dart';

import '../../domain/domain.dart';

class SmsRepositoryImpl implements SmsRepository {
  final Dio client;
  final TokenJar tokenJar;

  const SmsRepositoryImpl(this.client, this.tokenJar);

  @override
  Future<DataState<bool>> sendSms({
    required final String message,
    required final String to,
  }) async {
    const String path = "sms";

    try {
      final res = await client.post<Map<String, dynamic>>(
        path,
        data: FormData.fromMap({'To': to, 'Message': message}),
      );

      return DataSuccess(res.data?["success"] as bool);
    } on Exception catch (e) {
      return DataFailed(e);
    }
  }
}
