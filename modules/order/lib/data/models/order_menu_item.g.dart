// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_menu_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OrderMenuItemModel _$$_OrderMenuItemModelFromJson(
        Map<String, dynamic> json) =>
    _$_OrderMenuItemModel(
      orderId: json['orderId'] as String?,
      uniqueId: json['uniqueId'] as String?,
      itemId: json['itemId'] as String,
      shopId: json['shopId'] as String,
      itemName: json['itemName'] as String?,
      itemNameMM: json['itemNameMM'] as String?,
      itemDesc: json['itemDesc'] as String?,
      itemDescMM: json['itemDescMM'] as String?,
      image: json['image'] as String?,
      shopName: json['shopName'] as String?,
      shopNameMM: json['shopNameMM'] as String?,
      containerCharges: json['containerCharges'] as num?,
      qty: json['qty'] as num?,
      contractPrice: json['contractPrice'] as num?,
      price: json['price'] as num?,
      onlinePrice: json['onlinePrice'] as num?,
      specialRequest: json['specialRequest'] as String?,
      shopConfirm: json['shopConfirm'] as bool?,
      pickupFlag: json['pickupFlag'] as bool?,
      halaFlag: json['halaFlag'] as bool?,
      popularFlag: json['popularFlag'] as bool?,
      activeStatus: json['activeStatus'] as bool?,
      choices: (json['choices'] as List<dynamic>?)
          ?.map((e) => OrderChoiceItemModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      relativeItems: (json['relativeItems'] as List<dynamic>?)
          ?.map(
              (e) => RelativeMenuItemModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      orderAt: json['orderAt'] == null
          ? null
          : TimeSpanModel.fromJson(json['orderAt'] as Map<String, dynamic>),
      untilOn: json['untilOn'] == null
          ? null
          : TimeSpanModel.fromJson(json['untilOn'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_OrderMenuItemModelToJson(
        _$_OrderMenuItemModel instance) =>
    <String, dynamic>{
      'orderId': instance.orderId,
      'uniqueId': instance.uniqueId,
      'itemId': instance.itemId,
      'shopId': instance.shopId,
      'itemName': instance.itemName,
      'itemNameMM': instance.itemNameMM,
      'itemDesc': instance.itemDesc,
      'itemDescMM': instance.itemDescMM,
      'image': instance.image,
      'shopName': instance.shopName,
      'shopNameMM': instance.shopNameMM,
      'containerCharges': instance.containerCharges,
      'qty': instance.qty,
      'contractPrice': instance.contractPrice,
      'price': instance.price,
      'onlinePrice': instance.onlinePrice,
      'specialRequest': instance.specialRequest,
      'shopConfirm': instance.shopConfirm,
      'pickupFlag': instance.pickupFlag,
      'halaFlag': instance.halaFlag,
      'popularFlag': instance.popularFlag,
      'activeStatus': instance.activeStatus,
      'choices': instance.choices,
      'relativeItems': instance.relativeItems,
      'orderAt': instance.orderAt,
      'untilOn': instance.untilOn,
    };
