import 'package:network_client/network_client.dart';
import 'package:signalr_netcore/signalr_http_client.dart';
import 'package:socket_client_real_adapter/src/mapper/response.dart';

class SocketHttpClient extends SignalRHttpClient {
  final NetworkClient client;

  SocketHttpClient(this.client);

  @override
  Future<SignalRHttpResponse> send(SignalRHttpRequest request) async {
    final res = await client.send<String>(
      request.method ?? "GET",
      request.url,
      optionalHeaders: request.headers?.asMap,
      body: request.content,
    );

    return res.toSignalRResponse();
  }
}
