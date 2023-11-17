import '../../constant/constant.dart';

abstract class ClientConstants {
  static String scheme = 'https';
  static String host = AppConstants.isDevEnv ? analyticApiHost : apiHost;
  static bool bypassOTPSignIn = AppConstants.isDevEnv ? true : false;

  static bool bypassNetworkLookup = false;
  static bool bypassSignalRService = true;

  static const String localHost = '192.168.0.106';
  static const String apiHost = 'api.quickfoodmm.com';
  static const String analyticApiHost = 'analytics-api.quickfoodmm.com';

  static const String hubHost = AppConstants.isDevEnv ? analyticsHubHost : apiHubHost;
  static const String analyticsHubHost = "analytics.quickfoodmm.com";
  static const String apiHubHost = "admin.quickfoodmm.com";

  static const String callHubPath = "hub/call";
  static const String chatHubPath = "hub/chat";
  static const String orderTrackingHubPath = "hub/tracking";
  static const String merchantOrderHubPath = "hub/shop";

  static const Map<String, String> getDefaultHeaders = {};
  static const Map<String, String> putDefaultHeaders = {};
  static const Map<String, String> postDefaultHeaders = {};

  static const reviewAccount = "095171061";

  static const apiVersionRoutesMap = {
    1: 'api/v1/',
    2: 'api/v2/',
  };

  static const privacyPolicyWebUrl = "https://quickfoodmm.com/#/terms-and-conditions";

  static var pingAddress = host;
}