import 'package:biker_notificatoin_socket/src/src.dart';
import 'package:notification/domain/entities/notification.dart';
import 'package:socket_client/socket_client.dart';

class BikerNotificationSocket implements BikerNotificationSocketUseCases {
  final SocketClient socket;
  const BikerNotificationSocket(this.socket);

  NotificationEntity? fromRemoteMessage(List<Object?>? args) {
    if (args == null || args.isNotEmpty != true) return null;
    return const NotificationEntity();
  }

  void registerCallbackOnMessage(
    BikerNotificationSocketNotificationType invokeType,
    void Function(RemoteMessage<NotificationEntity>) handler,
  ) {
    socket.registerCallbackOnMessage(SocketMessageHandler(
      invokeType.type,
      fromRemoteMessage,
      (e) {
        if (e.data == null) return;
        handler(RemoteMessage(invokeType: e.invokeType, data: e.data!));
      },
    ));
  }

  void removeCallbackOnMessage(
    BikerNotificationSocketNotificationType invokeType,
    void Function(RemoteMessage<NotificationEntity>) handler,
  ) {
    socket.removeCallbackOnMessage(SocketMessageHandler(
      invokeType.type,
      fromRemoteMessage,
      (e) {
        if (e.data == null) return;
        handler(RemoteMessage(invokeType: e.invokeType, data: e.data!));
      },
    ));
  }

  @override
  void onAssignedSchedule(void Function(RemoteMessage<NotificationEntity>) handler) {
    registerCallbackOnMessage(
      BikerNotificationSocketNotificationType.assignedSchedule,
      handler,
    );
  }

  @override
  void onCancelOrder(void Function(RemoteMessage<NotificationEntity>) handler) {
    registerCallbackOnMessage(
      BikerNotificationSocketNotificationType.cancelOrder,
      handler,
    );
  }

  @override
  void onDropOff(void Function(RemoteMessage<NotificationEntity>) handler) {
    registerCallbackOnMessage(
      BikerNotificationSocketNotificationType.dropOff,
      handler,
    );
  }

  @override
  void onNewOrderAlert(void Function(RemoteMessage<NotificationEntity>) handler) {
    registerCallbackOnMessage(
      BikerNotificationSocketNotificationType.newOrderAlert,
      handler,
    );
  }

  @override
  void onOrderAccept(void Function(RemoteMessage<NotificationEntity>) handler) {
    registerCallbackOnMessage(
      BikerNotificationSocketNotificationType.newOrderAlert,
      handler,
    );
  }

  @override
  void onOrderAssign(void Function(RemoteMessage<NotificationEntity>) handler) {
    registerCallbackOnMessage(
      BikerNotificationSocketNotificationType.orderAssign,
      handler,
    );
  }

  @override
  void onReadyConfirm(void Function(RemoteMessage<NotificationEntity>) handler) {
    registerCallbackOnMessage(
      BikerNotificationSocketNotificationType.orderAssign,
      handler,
    );
  }

  @override
  void onReturnOrder(void Function(RemoteMessage<NotificationEntity>) handler) {
    registerCallbackOnMessage(
      BikerNotificationSocketNotificationType.returnOrder,
      handler,
    );
  }

  @override
  void removeOnAssignedSchedule(void Function(RemoteMessage<NotificationEntity>) handler) {
    removeCallbackOnMessage(
      BikerNotificationSocketNotificationType.assignedSchedule,
      handler,
    );
  }

  @override
  void removeOnCancelOrder(void Function(RemoteMessage<NotificationEntity>) handler) {
    removeCallbackOnMessage(
      BikerNotificationSocketNotificationType.cancelOrder,
      handler,
    );
  }

  @override
  void removeOnDropOff(void Function(RemoteMessage<NotificationEntity>) handler) {
    removeCallbackOnMessage(
      BikerNotificationSocketNotificationType.dropOff,
      handler,
    );
  }

  @override
  void removeOnNewOrderAlert(void Function(RemoteMessage<NotificationEntity>) handler) {
    removeCallbackOnMessage(
      BikerNotificationSocketNotificationType.newOrderAlert,
      handler,
    );
  }

  @override
  void removeOnOrderAccept(void Function(RemoteMessage<NotificationEntity>) handler) {
    removeCallbackOnMessage(
      BikerNotificationSocketNotificationType.orderAccept,
      handler,
    );
  }

  @override
  void removeOnOrderAssign(void Function(RemoteMessage<NotificationEntity>) handler) {
    removeCallbackOnMessage(
      BikerNotificationSocketNotificationType.orderAssign,
      handler,
    );
  }

  @override
  void removeOnReadyConfirm(void Function(RemoteMessage<NotificationEntity>) handler) {
    removeCallbackOnMessage(
      BikerNotificationSocketNotificationType.readyConfirm,
      handler,
    );
  }

  @override
  void removeOnReturnOrder(void Function(RemoteMessage<NotificationEntity>) handler) {
    removeCallbackOnMessage(
      BikerNotificationSocketNotificationType.returnOrder,
      handler,
    );
  }
}
