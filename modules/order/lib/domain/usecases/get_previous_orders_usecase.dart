import 'package:core/core.dart';
import '../domain.dart';

class GetPreviousOrderUsecase extends UseCase<DataState<List<CheckOutOrderEntity>>, GetPreviousOrderParams> {
  final OrderRepository repository;
  const GetPreviousOrderUsecase(this.repository);

  @override
  Future<DataState<List<CheckOutOrderEntity>>> call(GetPreviousOrderParams params) {
    return repository.getPreviousOrders(
      userId: params.userId,
      startDate: params.startDate,
      endDate: params.endDate,
    );
  }
}

class GetPreviousOrderParams {
  final String userId;
  final DateTime startDate;
  final DateTime endDate;

  const GetPreviousOrderParams({
    required this.userId,
    required this.startDate,
    required this.endDate,
  });
}
