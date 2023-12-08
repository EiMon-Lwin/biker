// import 'package:core/core.dart';
// import 'package:get_it/get_it.dart';
// import 'package:merchant_order_socket/merchant_order_socket.dart';
// import 'package:socket_client/socket_client.dart';

// class MerchantOrderSocketRealAdapterDependencyConfigurator extends DependencyConfigurator {
//   @override
//   void configureDependencies(DependencyConfigurationContext context, GetIt getIt) {
//     getIt.registerSingleton(
//       MerchantOrderSocket(
//         SocketClientConfig(hubUrl: context.merchantOrderSocketUrl),
//         inject(),
//         inject(),
//       ),
//     );
//   }
// }
