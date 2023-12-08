import 'package:socket_client/socket_client.dart';

typedef SocketRes = List<Object?>?;
typedef SocketReq = List<Object>?;
typedef MessageHandlerCallback = void Function(SocketRes);
typedef ConnectionIdChangedCallback = void Function(String);

class SocketMessageHandler<T> {
  final String invokeType;
  final T Function (List<Object?>?) fromRemoteMessage;
  final void Function(RemoteMessage<T>) handler;

  const SocketMessageHandler(this.invokeType, this.fromRemoteMessage, this.handler);
}

abstract class SocketClient {
  Future<void> startConnection();

  Future<void> stopConnection();

  void onClose({Exception? error});

  void onReconnecting({Exception? error});

  void onReconnected({String? connectionId});

  void on(String methodName, MessageHandlerCallback callback);

  Future<Object?> invoke(String methodName, {SocketReq args});

  void registerCallbackOnMessage<T>(SocketMessageHandler<T> handler);

  void removeCallbackOnMessage<T>(SocketMessageHandler<T> handler);

  void registerCallbackOnConnectionIdChanged(
    ConnectionIdChangedCallback callback,
    [String? id,]
  );

  void removeCallbackOnConnectionIdChanged(
    ConnectionIdChangedCallback callback,
    [String? id,]
  );

  void onConnectionIdChanged(String connectionId);
}
