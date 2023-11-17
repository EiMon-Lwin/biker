abstract class ServiceLocator {
  T call<T extends Object>();

  void registerSingleton<T extends Object>(
    T instance, [
    dynamic context,
  ]);

  Future<void> unRegisterSingleton<T extends Object>({
    Object? instance,
    String? instanceName,
  });

  T get<T extends Object>({
    String? instanceName,
    dynamic param1,
    dynamic param2,
  });

  bool isRegistered<T extends Object>();
}

abstract class ServiceLocatorMixin {
  final ServiceLocator serviceLocator;
  const ServiceLocatorMixin(this.serviceLocator);

  T registerAsScope<T extends Object>(T Function() factory) {
    // TODO: implement registerAsScope
    throw UnimplementedError();
  }

  T registerAsSingleton<T extends Object>(T Function() factory) {
    if (!serviceLocator.isRegistered<T>()) {
      serviceLocator.registerSingleton(factory());
    }

    return serviceLocator.get<T>();
  }

  T registerAsFactory<T extends Object>(T Function() factory) {
    // TODO: implement registerAsFactory
    throw UnimplementedError();
  }
}
