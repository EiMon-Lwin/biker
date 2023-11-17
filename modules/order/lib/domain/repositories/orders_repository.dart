import '../domain.dart';
import 'package:core/core.dart';

abstract class OrderRepository {
  Future<DataState<CheckOutOrderEntity>> getOrder(String orderId);

  Future<DataState<List<CheckOutOrderEntity>>> getCurrentOrders({
    required String userId,
    required int pageSize,
    required int pageRow,
  });

  Future<DataState<List<CheckOutOrderEntity>>> getPreviousOrders({
    required String userId,
    required DateTime startDate,
    required DateTime endDate,
  });

  Future<DataState<void>> shopConfirm(List<ShopConfirmEntity> confirmEntities);
}
