import 'package:data/models/time/time_span.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/domain.dart';

import 'order_choice_item.dart';
import 'relative_menu_item.dart';

part 'order_menu_item.freezed.dart';
part 'order_menu_item.g.dart';

@freezed
class OrderMenuItemModel extends OrderMenuItemEntity with _$OrderMenuItemModel {
  factory OrderMenuItemModel({
    required final String? orderId,
    required final String? uniqueId,
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
    List<OrderChoiceItemModel>? choices,
    List<RelativeMenuItemModel>? relativeItems,
    TimeSpanModel? orderAt,
    TimeSpanModel? untilOn,
  }) = _OrderMenuItemModel;

  factory OrderMenuItemModel.fromJson(Map<String, dynamic> json) =>
      _$$_OrderMenuItemModelFromJson(json);

  factory OrderMenuItemModel.fromEntity(OrderMenuItemEntity entity) =>
      OrderMenuItemModel(
        orderId: entity.orderId,
        uniqueId: entity.uniqueId,
        itemId: entity.itemId,
        shopId: entity.shopId,
        itemName: entity.itemName,
        itemNameMM: entity.itemNameMM,
        itemDesc: entity.itemDesc,
        itemDescMM: entity.itemDescMM,
        image: entity.image,
        shopName: entity.shopName,
        shopNameMM: entity.shopNameMM,
        containerCharges: entity.containerCharges,
        qty: entity.qty,
        contractPrice: entity.contractPrice,
        price: entity.price,
        onlinePrice: entity.onlinePrice,
        specialRequest: entity.specialRequest,
        shopConfirm: entity.shopConfirm,
        pickupFlag: entity.pickupFlag,
        halaFlag: entity.halaFlag,
        popularFlag: entity.popularFlag,
        activeStatus: entity.activeStatus,
        choices: entity.choices == null? null: entity.choices!.map((e)=> OrderChoiceItemModel.fromEntity(e)).toList(),
        relativeItems: entity.relativeItems == null ? null: entity.relativeItems!.map((e) => RelativeMenuItemModel.fromEntity(e)).toList(),
        orderAt: entity.orderAt == null ? null: TimeSpanModel.fromEntity(entity.orderAt!),
        untilOn: entity.untilOn == null ? null: TimeSpanModel.fromEntity(entity.untilOn!),
      );
}
