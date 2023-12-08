import 'package:core/core.dart';
import '../domain.dart';

class GetOrderUsecase extends UseCase<DataState<CheckOutOrderEntity>, GetOrderParams> {
  final OrderRepository repository;

  const GetOrderUsecase(this.repository);

  @override
  Future<DataState<CheckOutOrderEntity>> call(GetOrderParams params) {
    return repository.getOrder(params.orderId);
  }
}

class GetOrderParams {
  final String orderId;

  const GetOrderParams({
    required this.orderId,
  });
}
