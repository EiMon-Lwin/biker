import 'package:domain/domain.dart';

import 'menu_item.dart';
import 'order_choice_item.dart';
import 'relative_menu_item.dart';

class OrderMenuItemEntity extends MenuItemEntity {
  final String? orderId;
  final String? uniqueId;

  const OrderMenuItemEntity({
    required this.orderId,
    required this.uniqueId,
    required String itemId,
    required String shopId,
    String? itemName,
    String? itemNameMM,
    String? itemDesc,
    String? itemDescMM,
    String? image,
    String? shopName,
    String? shopNameMM,
    num? containerCharges,
    num? qty,
    num? contractPrice,
    num? price,
    num? onlinePrice,
    String? specialRequest,
    bool? shopConfirm,
    bool? pickupFlag,
    bool? halaFlag,
    bool? popularFlag,
    bool? activeStatus,
    List<OrderChoiceItemEntity>? choices,
    List<RelativeMenuItemEntity>? relativeItems,
    TimeSpanVO? orderAt,
    TimeSpanVO? untilOn,
  }) : super(
          itemId: itemId,
          itemName: itemName,
          itemNameMM: itemNameMM,
          itemDesc: itemDesc,
          itemDescMM: itemDescMM,
          image: image,
          shopId: shopId,
          shopName: shopName,
          shopNameMM: shopNameMM,
          containerCharges: containerCharges,
          qty: qty,
          contractPrice: contractPrice,
          price: price,
          onlinePrice: onlinePrice,
          specialRequest: specialRequest,
          shopConfirm: shopConfirm,
          pickupFlag: pickupFlag,
          halaFlag: halaFlag,
          popularFlag: popularFlag,
          activeStatus: activeStatus,
          choices: choices,
          relativeItems: relativeItems,
          orderAt: orderAt,
          untilOn: untilOn,
        );
}
