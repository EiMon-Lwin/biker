import 'package:core/core.dart';
import 'package:dio/dio.dart';
import 'package:order/order.dart';
import 'package:service_locator/service_locator.dart';
import 'package:token_jar/token_jar.dart';

class OrderModule implements DependencyConfigurator {
  final Dio client;
  final TokenJar tokenJar;

  const OrderModule({required this.client, required this.tokenJar});

  @override
  void configureDependencies(DependencyConfigurationContext context, ServiceLocator serviceLocator) {
    provideOrderRepository(serviceLocator);
    provideGetCurrentOrdersUseCase(serviceLocator);
    provideGetOrderUseCase(serviceLocator);
    provideGetPreviousOrdersUseCase(serviceLocator);
    provideShopConfirmUseCase(serviceLocator);
    provideOrderBloc(serviceLocator);
  }

  void provideOrderRepository(ServiceLocator serviceLocator) {
    serviceLocator.registerSingleton<OrderRepository>(
      OrderRepositoryImpl(client, tokenJar)
    );
  }

  void provideGetCurrentOrdersUseCase(ServiceLocator serviceLocator) {
    serviceLocator.registerSingleton(GetCurrentOrdersUsecase(
      inject(),
    ));
  }

  void provideGetOrderUseCase(ServiceLocator serviceLocator) {
    serviceLocator.registerSingleton(GetOrderUsecase(
      inject(),
    ));
  }

  void provideGetPreviousOrdersUseCase(ServiceLocator serviceLocator) {
    serviceLocator.registerSingleton(GetPreviousOrderUsecase(
      inject(),
    ));
  }

  void provideShopConfirmUseCase(ServiceLocator serviceLocator) {
    serviceLocator.registerSingleton(ShopConfirmUseCase(
      inject(),
    ));
  }

  void provideOrderBloc(ServiceLocator serviceLocator) {
    serviceLocator.registerSingleton(OrderBloc(
      inject()
    ));
  }
}