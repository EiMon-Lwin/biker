import 'package:notification/notification.dart';
import 'package:socket_client/socket_client.dart';

abstract class BikerNotificationSocketUseCases {
  void onAssignedSchedule(void Function(RemoteMessage<NotificationEntity>) handler);

  void onOrderAccept(void Function(RemoteMessage<NotificationEntity>) handler);

  void onNewOrderAlert(void Function(RemoteMessage<NotificationEntity>) handler);

  void onReadyConfirm(void Function(RemoteMessage<NotificationEntity>) handler);

  void onCancelOrder(void Function(RemoteMessage<NotificationEntity>) handler);

  void onReturnOrder(void Function(RemoteMessage<NotificationEntity>) handler);

  void onOrderAssign(void Function(RemoteMessage<NotificationEntity>) handler);

  void onDropOff(void Function(RemoteMessage<NotificationEntity>) handler);

  void removeOnAssignedSchedule(void Function(RemoteMessage<NotificationEntity>) handler);

  void removeOnOrderAccept(void Function(RemoteMessage<NotificationEntity>) handler);

  void removeOnNewOrderAlert(void Function(RemoteMessage<NotificationEntity>) handler);

  void removeOnReadyConfirm(void Function(RemoteMessage<NotificationEntity>) handler);

  void removeOnCancelOrder(void Function(RemoteMessage<NotificationEntity>) handler);

  void removeOnReturnOrder(void Function(RemoteMessage<NotificationEntity>) handler);

  void removeOnOrderAssign(void Function(RemoteMessage<NotificationEntity>) handler);

  void removeOnDropOff(void Function(RemoteMessage<NotificationEntity>) handler);
}
