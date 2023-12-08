import 'package:core/core.dart';
import 'package:dio/dio.dart';

import '../../domain/domain.dart';

import 'dao/notification_dao_service.dart';
import 'network/notification_api_service.dart';

class NotificationRepositoryImpl implements NotificationRepository {
  final Dio client;
  final NotifcationDaoService daoService;
  final NotificationApiService apiService;

  NotificationRepositoryImpl(this.client)
      : apiService = NotificationApiService(client), daoService = NotifcationDaoService();

  @override
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
    return apiService.pushNotification(
      title: title,
      body: body,
      date: date,
      redirectUrl: redirectUrl,
      role: role,
      type: type,
      jsonData: jsonData,
      read: read,
    );
  }

  @override
  Future<DataState<ResponseMessageEntity>> registerNotificationToken({
    required String userId,
    required String role,
    required String notificationToken,
    required String platform,
  }) async {
    return await apiService.registerNotificationToken(
      userId: userId,
      role: role,
      notificationToken: notificationToken,
      platform: platform,
    );
  }

  @override
  Future<DataState<int>> saveNotification(NotificationEntity entity) async {
    return await daoService.saveNotification(entity);
  }
}
