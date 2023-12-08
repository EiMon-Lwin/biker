import 'package:network_client/network_client.dart';

class UriFormatter {
  static Uri format(
    NetworkClientConfig config, {
    String? path,
    Map<String, String>? queryParameters,
    int apiVersion = 1,
  }) {
    if (path?.startsWith("http") == true) return Uri.parse(path!);

    final apiPath = config.apiVersionRoutesMap.containsKey(apiVersion)
        ? config.apiVersionRoutesMap[apiVersion]
        : "api/v1/";

    // Sometime path might contains query since we are using client for all
    // networking purposes.
    final parsedPath = Uri.parse("$apiPath$path");

    return Uri(
      scheme: config.scheme,
      host: config.host,
      path: parsedPath.path,
      queryParameters: {
        ...parsedPath.queryParameters,
        if (queryParameters != null) ...queryParameters,
      },
    );
  }
}
