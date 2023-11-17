import 'package:flutter/foundation.dart';

class AppConstants {
  static const bool isDebugMode = kDebugMode;

  static const String appName = "Quick Food";
  static const String appLanguage = "APP_LANGUAGE";
  static const String searchHistoriesBoxName = 'Search_History';
  static const String settingHive = "SETTING_HIVE";

  static const bool isDevEnv = true;
  static const bool showExperimetalFeatures = false;
  static const bool allowCallServices = true;
  static const bool allowApiConfiguration = true;
  static const bool showCallButtonUser = false;
  static const bool tamperOrderDetailStatus = false;
  static const currencySymbol = isDevEnv ? 'MMK' : '';
  static const Duration maxCacheAge = Duration(days: 3);
}
