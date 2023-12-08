import 'dart:async';

import 'package:colorize/colorize.dart';
import 'package:logging/logging.dart';
import 'package:network_client/network_client.dart';
import 'package:socket_client/socket_client.dart';
import 'package:signalr_netcore/signalr_client.dart' as signalR;
import 'package:socket_client_real_adapter/src/socket_http_client/socket_http_client_.dart';

class SocketClientRealAdapter implements SocketClient {
  final NetworkClient client;
  final SocketClientConfig config;

  SocketClientRealAdapter(this.config, this.client) {
    _init(client);
  }

  signalR.HubConnection? connection;
  void _init(NetworkClient httpClient) {
    // Configer the logging
    Logger.root.level = Level.ALL;
    // Writes the log messages to the console
    Logger.root.onRecord.listen((LogRecord rec) {
      print('${rec.level.name}: ${rec.time}: ${rec.message}');
    });

    // prepare options
    final option = signalR.HttpConnectionOptions(
      httpClient: SocketHttpClient(httpClient),
      logger: Logger("Socket Logger"),
      logMessageContent: true,
    );

    // instantiate
    final client = signalR.HubConnectionBuilder().withUrl(
      config.hubUrl,
      options: option,
    );

    // config
    if (config.autoReconnect) client.withAutomaticReconnect();

    //create connection
    connection = client.build();

    connection?.onclose(onClose);
    connection?.onreconnecting(onReconnecting);
    connection?.onreconnected(onReconnected);
  }

  @override
  void on(String methodName, MessageHandlerCallback callback) {
    connection?.on(methodName, callback);
  }

  @override
  Future<Object?> invoke(String methodName, {List<Object>? args}) async {
    return await connection?.invoke(methodName, args: args);
  }

  @override
  Future<void> startConnection() async {
    await connection?.start();
    if (connection?.connectionId != null) {
      onConnectionIdChanged(connection!.connectionId!);
    }
  }

  @override
  Future<void> stopConnection() async {
    await connection?.stop();
    connection = null;
  }

  @override
  void onClose({Exception? error}) {
    if (client.config.isDebugMode) {
      print(Colorize(config.hubUrl + " closed").red());
    }
  }

  @override
  void onReconnected({String? connectionId}) {
    if (client.config.isDebugMode) {
      print(Colorize(config.hubUrl + " reconnected").red());
    }

    if (connection?.connectionId != null) {
      onConnectionIdChanged(connection!.connectionId!);
    }
  }

  @override
  void onReconnecting({Exception? error}) {
    if (client.config.isDebugMode) {
      print(Colorize(config.hubUrl + " reconnecting").red());
    }
  }

  late final Map<String, ConnectionIdChangedCallback> _connectionChangedHandlers = {};

  @override
  void registerCallbackOnConnectionIdChanged(ConnectionIdChangedCallback callback, [String? id]) {
    _connectionChangedHandlers[id ?? callback.hashCode.toString()] = callback;
  }
  
  @override
  void removeCallbackOnConnectionIdChanged(ConnectionIdChangedCallback callback, [String? id]) {
    _connectionChangedHandlers.remove(id ?? callback.hashCode.toString());
  }

  @override
  void onConnectionIdChanged(String connectionId) {
    _invokeRegisteredCallbackOnConnectionIdChanges(connectionId);
  }

  void _invokeRegisteredCallbackOnConnectionIdChanges(String connectionId) {
    _connectionChangedHandlers.forEach((key, fun) {
      if (client.config.isDebugMode) print("Calling registered callback: $key");
      fun.call(connectionId);
    });
  }

  late final Map<String, SocketMessageHandler> _onMessageHandlers = {};
  
  @override
  void registerCallbackOnMessage<T>(SocketMessageHandler handler) {
    final key = handler.hashCode.toString();
    _onMessageHandlers[key] = handler;
    on(handler.invokeType, (args) {
      print("Socket message received $args");
      if(!_onMessageHandlers.containsKey(key)) return;
      handler.handler(handler.fromRemoteMessage(args));
    });
  }
  
  @override
  void removeCallbackOnMessage<T>(SocketMessageHandler handler) {
    _onMessageHandlers.remove(handler.hashCode.toString());
  }
}
