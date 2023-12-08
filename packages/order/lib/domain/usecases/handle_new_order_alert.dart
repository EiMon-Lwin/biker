// import 'package:core/core.dart';
// import 'package:merchant_order_socket/merchant_order_socket.dart';
// import 'package:socket_client/socket_client.dart';

// class HandleNewOrderAlertUseCase extends UseCase<void, HandleNewOrderAlertParams> {
//   final Orderocket orderSocket;
//   const HandleNewOrderAlertUseCase(
//     this.orderSocket,
//   );
  
//   @override
//   Future<void> call(HandleNewOrderAlertParams params) async {
//     orderSocket.on(params.methodName, params.handlerCallback);
//   }
// }

// class HandleNewOrderAlertParams {
//   final String methodName;
//   final MessageHandlerCallback handlerCallback;

//   const HandleNewOrderAlertParams({
//     required this.methodName,
//     required this.handlerCallback,
//   });
// }
