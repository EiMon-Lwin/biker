// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'relative_menu_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RelativeMenuItemModel _$$_RelativeMenuItemModelFromJson(
        Map<String, dynamic> json) =>
    _$_RelativeMenuItemModel(
      itemId: json['itemId'] as String,
      itemName: json['itemName'] as String?,
      itemNameMM: json['itemNameMM'] as String?,
      image: json['image'] as String?,
      containerCharges: json['containerCharges'] as num?,
      contractPrice: json['contractPrice'] as num?,
      price: json['price'] as num?,
      discountPercent: json['discountPercent'] as num?,
      onlinePrice: json['onlinePrice'] as num?,
    );

Map<String, dynamic> _$$_RelativeMenuItemModelToJson(
        _$_RelativeMenuItemModel instance) =>
    <String, dynamic>{
      'itemId': instance.itemId,
      'itemName': instance.itemName,
      'itemNameMM': instance.itemNameMM,
      'image': instance.image,
      'containerCharges': instance.containerCharges,
      'contractPrice': instance.contractPrice,
      'price': instance.price,
      'discountPercent': instance.discountPercent,
      'onlinePrice': instance.onlinePrice,
    };
