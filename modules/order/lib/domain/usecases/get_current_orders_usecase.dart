import 'package:core/core.dart';
import '../domain.dart';

class GetCurrentOrdersUsecase extends UseCase<DataState<List<CheckOutOrderEntity>>, GetCurrentOrdersParams> {
  final OrderRepository repository;
  const GetCurrentOrdersUsecase(this.repository);

  @override
  Future<DataState<List<CheckOutOrderEntity>>> call(GetCurrentOrdersParams params) {
    return repository.getCurrentOrders(
      userId: params.userId,
      pageRow: params.pageRow,
      pageSize: params.pageSize,
    );
  }
}

class GetCurrentOrdersParams {
  final String userId;
  final int pageSize;
  final int pageRow;

  const GetCurrentOrdersParams({
    required this.userId,
    required this.pageRow,
    required this.pageSize,
  });
}
