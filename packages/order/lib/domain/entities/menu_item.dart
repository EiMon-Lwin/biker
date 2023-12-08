import '../../domain/domain.dart';
import 'package:domain/domain.dart';

class MenuItemEntity {
  final String itemId;
  final String? itemName;
  final String? itemNameMM;
  final String? itemDesc;
  final String? itemDescMM;
  final String? image;
  final String shopId;
  final String? shopName;
  final String? shopNameMM;
  final num? containerCharges;
  final num? qty;
  final num? contractPrice;
  final num? price;
  final num? onlinePrice;
  final String? specialRequest;
  final bool? shopConfirm;
  final bool? pickupFlag;
  final bool? halaFlag;
  final bool? popularFlag;
  final bool? activeStatus;
  final List<OrderChoiceItemEntity>? choices;
  final List<RelativeMenuItemEntity>? relativeItems;
  final TimeSpanVO? orderAt;
  final TimeSpanVO? untilOn;

  const MenuItemEntity({
    required this.itemId,
    required this.shopId,
    this.itemName,
    this.itemNameMM,
    this.itemDesc,
    this.itemDescMM,
    this.image,
    this.shopName,
    this.shopNameMM,
    this.containerCharges,
    this.qty,
    this.contractPrice,
    this.price,
    this.onlinePrice,
    this.specialRequest,
    this.shopConfirm,
    this.pickupFlag,
    this.halaFlag,
    this.popularFlag,
    this.activeStatus,
    this.choices,
    this.relativeItems,
    this.orderAt,
    this.untilOn,
  });
}
