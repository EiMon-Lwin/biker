class DependencyConfigurationContext {
  final bool isDevEnv;
  final String scheme;

  // REST Configs
  final String host;
  final Map<int, String> apiVersionRoutes;
  void Function(Exception) onException = (exception) {};

  // Socket Configs
  final String hubHost;
  final String callHubPath;
  final String chatHubPath;
  final String orderTrackingHubPath;
  final String merchantOrderHubPath;

  final String pingAddress;

  DependencyConfigurationContext({
    required this.isDevEnv,
    required this.scheme,
    required this.host,
    required this.hubHost,
    required this.apiVersionRoutes,
    required this.chatHubPath,
    required this.orderTrackingHubPath,
    required this.callHubPath,
    required this.merchantOrderHubPath,
    required this.pingAddress,
  });
}