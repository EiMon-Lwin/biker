import '../../domain/domain.dart';

import '../models/shop_confirm.dart';

extension CheckOutOrderExtendsion on CheckOutOrderEntity {
  List<ShopConfirmModel> toConfirmModels({required bool confirmFlag}) {
    return orderItems
            ?.map((e) => ShopConfirmModel(
                  orderId: orderId,
                  itemId: e.itemId,
                  uniqueId: e.uniqueId ?? "[]",
                  shopId: e.shopId,
                  confirmFlag: confirmFlag,
                ))
            .toList() ??
        [];
  }
}
