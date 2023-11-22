import 'package:network_client/network_client.dart';
import 'package:signalr_netcore/signalr_http_client.dart';

extension SignalRHttpResponseMapper<T> on Response<T> {
  SignalRHttpResponse toSignalRResponse() {
    return SignalRHttpResponse(
      this.statusCode ?? 0,
      statusText: statusMessage,
      content: data,
    );
  }
}
