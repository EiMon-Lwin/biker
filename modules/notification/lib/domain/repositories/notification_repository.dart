import 'package:core/core.dart';

import '../entities/entities.dart';

abstract class NotificationRepository {
  Future<DataState<ResponseMessageEntity>> registerNotificationToken({
    required final String userId,
    required final String role,
    required final String notificationToken,
    required final String platform,
  });

  Future<DataState<NotificationEntity>> pushNotification({
    required final String title,
    required final String body,
    required final DateTime date,
    required final String redirectUrl,
    required final String role,
    required final String type,
    required final String jsonData,
    required final bool read,
  });

  Future<DataState<int>> saveNotification(NotificationEntity entity);
}
