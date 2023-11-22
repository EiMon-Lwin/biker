import 'dart:io';

class NetworkClientConfig {
  final String scheme;
  final String host;
  final Map<String, String> getRequestDefaultHeaders;
  final Map<String, String> postRequestDefaultHeaders;
  final Map<String, String> putRequestDefaultHeaders;
  final Map<int, String> apiVersionRoutesMap;
  final void Function(SocketException)? onNetworkConnectionError;
  final void Function(Exception)? onException;
  final Duration timeOutDuration;
  final bool isDebugMode;

  const NetworkClientConfig({
    this.scheme = "https",
    required this.host,
    this.getRequestDefaultHeaders = const <String, String>{},
    this.postRequestDefaultHeaders = const <String, String>{},
    this.putRequestDefaultHeaders = const <String, String>{},
    this.apiVersionRoutesMap = const <int, String>{},
    this.onNetworkConnectionError,
    this.onException,
    this.timeOutDuration = const Duration(seconds: 10),
    this.isDebugMode = false,
  });
}
