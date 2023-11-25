import 'package:biker_info/domain/domain.dart';
import 'package:dio/dio.dart';
import 'package:token_jar/token_jar.dart';
import 'package:core/core.dart';

import '../models/biker_info.dart';

class BikerInfoRepositoryImpl implements BikerInfoRepository {
  final Dio client;
  final TokenJar tokenJar;
  const BikerInfoRepositoryImpl(this.client, this.tokenJar);

  @override
  Future<DataState<BikerInfoEntity>> getInfo() async {
    const path = 'me/personal';

    try {
      final accessToken = (await tokenJar.get()).data?.accessToken;
      final res = await client.get<Map<String, dynamic>>(path,
          options: Options(headers: {"Authorization": "Bearer $accessToken"}));

      if (res.statusCode! > 299 || res.statusCode! < 200) {
        throw HttpStatusException(
          statusCode: res.statusCode!,
          message: res.statusMessage,
        );
      }

      try {
        return DataSuccess(BikerInfoModel.fromJson(res.data!["data"]));
      } on Exception catch (e) {
        throw SerializationException(e);
      }
    } on Exception catch (e) {
      return DataFailed(e);
    }
  }
}
