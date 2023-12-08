import 'package:service_locator/service_locator.dart';

import 'configuration_context.dart';

abstract class DependencyConfigurator {
  void configureDependencies(
    DependencyConfigurationContext context,
    ServiceLocator serviceLocator,
  );
}