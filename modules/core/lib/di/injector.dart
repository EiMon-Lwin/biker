import 'package:service_locator/service_locator.dart';

late ServiceLocator _injector;
void registerInjector(ServiceLocator injector) {
  _injector = injector;
}


T inject<T extends Object>({
  String? instanceName,
  dynamic param1,
  dynamic param2,
}) {
  return _injector.get(
    instanceName: instanceName,
    param1: param1,
    param2: param2,
  );
}
