import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:core/core.dart';
import 'package:token_jar/token_jar.dart';

import '../../domain/domain.dart';
import '../../data/data.dart';

class OrderRepositoryImpl implements OrderRepository {
  final Dio client;
  final TokenJar tokenJar;

  const OrderRepositoryImpl(this.client, this.tokenJar);

  @override
  Future<DataState<CheckOutOrderModel>> getOrder(String orderId) async {
    final path = 'order/$orderId';

    try {
      final res = await client.get<Map<String, dynamic>>(
        path,
      );

      try {
        final value = CheckOutOrderModel.fromJson(res.data!["data"]);
        return DataSuccess(value);
      } on Exception catch (e) {
        return DataFailed(SerializationException(e));
      }
    } on Exception catch (e) {
      return DataFailed(e);
    }
  }

  @override
  Future<DataState<List<CheckOutOrderEntity>>> getCurrentOrders({
    required String userId,
    required int pageSize,
    required int pageRow,
  }) async {
    const path = 'order/current-orders';

    try {
      final token = await tokenJar.get();
      final res = await client.get<Map<String, dynamic>>(
        path,
        queryParameters: {
          "userId": userId,
          "pageSize": "$pageSize",
          "pageRows": "$pageRow",
        },
        options: Options(headers: {
          'Authorization': 'Bearer ${token.data?.accessToken}',
        }),
      );

      if (res.statusCode != 200) {
        throw HttpStatusException(
          statusCode: res.statusCode ?? 0,
          message: "${res.statusMessage}\n${res.data}",
        );
      }

      try {
        final value = (res.data?['data'] as List)
            .map((e) => CheckOutOrderModel.fromJson(e as Map<String, dynamic>))
            .toList();
        return DataSuccess(value);
      } on Exception catch (e) {
        return DataFailed(SerializationException(e));
      }
    } on Exception catch (e) {
      return DataFailed(e);
    }
  }

  @override
  Future<DataState<List<CheckOutOrderEntity>>> getPreviousOrders({
    required String userId,
    required DateTime startDate,
    required DateTime endDate,
  }) async {
    const path = 'order/previous-orders';

    try {
      final token = await tokenJar.get();
      final res = await client.post<Map<String, dynamic>>(
        path,
        queryParameters: {
          "userId": userId,
          "sdate": startDate.toIso8601String(),
          "edate": endDate.toIso8601String(),
        },
        options: Options(headers: {
          'Authorization': 'Bearer ${token.data?.accessToken}',
        }),
      );

      if (res.statusCode != 200) {
        throw HttpStatusException(
          statusCode: res.statusCode ?? 0,
          message: "${res.statusMessage}\n${res.data}",
        );
      }

      try {
        final value = (res.data?['data'] as List)
            .map((e) => CheckOutOrderModel.fromJson(e as Map<String, dynamic>))
            .toList();
        return DataSuccess(value);
      } on Exception catch (e) {
        return DataFailed(SerializationException(e));
      }
    } on Exception catch (e) {
      return DataFailed(e);
    }
  }

  @override
  Future<DataState<void>> shopConfirm(List<ShopConfirmEntity> confirmEntities) async {
    const path = "order/shop-confirm";

    try {
      final res = await client.post<Map<String, dynamic>>(
        path,
        data: jsonEncode(confirmEntities
            .map((e) => ShopConfirmModel.fromEntity(e).toJson())
            .toList()),
      );

      if (res.statusCode != 200) {
        throw HttpStatusException(
          statusCode: res.statusCode ?? 0,
          message: "${res.statusMessage}\n${res.data}",
        );
      }

      try {
        // final value = AuthenticatedUserModel.fromJson(res.data!["data"]);
        // return DataSuccess(value);
        return DataSuccess([]);
      } on Exception catch (e) {
        return DataFailed(SerializationException(e));
      }
    } on Exception catch (e) {
      return DataFailed(e);
    }
  }
}
