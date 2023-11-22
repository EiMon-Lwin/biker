import 'package:core/core.dart';
import 'package:data/models/schedule/schedule_model.dart';
import 'package:dio/dio.dart';
import 'package:domain/entities/schedule/schedule_entity.dart';
import 'package:token_jar/token_jar.dart';

import '../../domain/domain.dart';

class ScheduleRepositoryImplementation implements ScheduleRepository {
  final Dio client;
  final TokenJar tokenJar;
  const ScheduleRepositoryImplementation(this.client, this.tokenJar);

  @override
  Future<DataState<List<ScheduleEntity>>> getAvailableSchedules() async {
    const path = 'schedules/avaliable';

    try {
      final token = await tokenJar.get();
      final res = await client.get<Map<String, dynamic>>(
        path,
        options: Options(headers: {
          'Authorization': 'Bearer ${token.data?.accessToken}',
        }),
      );

      if (res.statusCode! > 299 || res.statusCode! < 200) {
        throw HttpStatusException(
          statusCode: res.statusCode!,
          message: res.statusMessage,
        );
      }

      final value = (res.data!["data"] as List)
          .map((e) => ScheduleModel.fromJson(e as Map<String, dynamic>))
          .toList();
      return DataSuccess(value);
    } on Exception catch (e) {
      return DataFailed(SerializationException(e));
    }
  }

  @override
  Future<DataState<List<ScheduleEntity>>> getNextSchedules() async {
    const path = 'schedules/next-schedule';

    try {
      final token = await tokenJar.get();
      final res = await client.get<Map<String, dynamic>>(
        path,
        options: Options(headers: {
          'Authorization': 'Bearer ${token.data?.accessToken}',
        }),
      );

      if (res.statusCode! > 299 || res.statusCode! < 200) {
        throw HttpStatusException(
          statusCode: res.statusCode!,
          message: res.statusMessage,
        );
      }

      final value = (res.data!["data"] as List)
          .map((e) => ScheduleModel.fromJson(e as Map<String, dynamic>))
          .toList();
      return DataSuccess(value);
    } on Exception catch (e) {
      return DataFailed(SerializationException(e));
    }
  }
}
