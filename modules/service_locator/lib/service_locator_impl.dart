import 'package:get_it/get_it.dart';
import 'service_locator.dart';

class ServiceLocatorRealAdapter implements ServiceLocator {
  final GetIt getIt;
  ServiceLocatorRealAdapter(this.getIt);

  @override
  T get<T extends Object>({String? instanceName, param1, param2}) {
    return getIt.get<T>(
      instanceName: instanceName,
      param1: param1,
      param2: param2,
    );
  }

  @override
  void registerSingleton<T extends Object>(T instance, [context]) {
    getIt.registerSingleton(instance);
  }

  @override
  bool isRegistered<T extends Object>(
      {Object? instance, String? instanceName}) {
    return getIt.isRegistered<T>(
      instance: instance,
      instanceName: instanceName,
    );
  }

  @override
  Future<void> unRegisterSingleton<T extends Object>({
    Object? instance,
    String? instanceName,
  }) async {
    await getIt.unregister<T>(
      instance: instance,
      instanceName: instanceName,
    );
  }

  @override
  T call<T extends Object>() {
    return get<T>();
  }
}
