import 'package:core/core.dart';
import 'package:dio/dio.dart';

import '../../../domain/domain.dart';
import '../../models/models.dart';

class NotificationApiService {
  final Dio client;

  const NotificationApiService(this.client);

  Future<DataState<NotificationEntity>> pushNotification({
    required String title,
    required String body,
    required DateTime date,
    required String redirectUrl,
    required String role,
    required String type,
    required String jsonData,
    required bool read,
  }) async {
    try {
      const path = 'notifications/push-specific';

      final res = await client.post<Map<String, dynamic>>(
        path,
        data: FormData.fromMap({
          'Title': title,
          'Body': body,
          'Date': date.toIso8601String(),
          'RedirectUrl': redirectUrl,
          'Role': role,
          'Type': type,
          'JsonData': jsonData,
          'Read': '$read',
        }),
      );

      try {
        final value = NotificationModel.fromJson(res.data!["data"]);
        return DataSuccess(value);
      } on Exception catch (e) {
        return DataFailed(SerializationException(e));
      }
    } on Exception catch (e) {
      return DataFailed(e);
    }
  }

  Future<DataState<ResponseMessageEntity>> registerNotificationToken({
    required String userId,
    required String role,
    required String notificationToken,
    required String platform,
  }) async {
    const path = 'notifications/register-token';

    final res = await client.post<Map<String, dynamic>>(
      path,
      data: FormData.fromMap({
        'UserId': userId,
        'Role': role,
        'NotificationToken': notificationToken,
        'Platform': platform,
      }),
    );

    try {
      final value = ResponseMessageModel.fromJson(res.data!["data"]);
      return DataSuccess(value);
    } on Exception catch (e) {
      return DataFailed(SerializationException(e));
    }
  }
}
