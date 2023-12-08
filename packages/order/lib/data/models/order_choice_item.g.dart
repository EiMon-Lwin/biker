// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_choice_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OrderChoiceItemModel _$$_OrderChoiceItemModelFromJson(
        Map<String, dynamic> json) =>
    _$_OrderChoiceItemModel(
      orderId: json['orderId'] as String,
      itemId: json['itemId'] as String,
      uniqueId: json['uniqueId'] as String,
      citemid: json['citemid'] as num?,
      citemName: json['citemName'] as String?,
      contractPrice: json['contractPrice'] as num?,
      price: json['price'] as num?,
      onlinePrice: json['onlinePrice'] as num?,
    );

Map<String, dynamic> _$$_OrderChoiceItemModelToJson(
        _$_OrderChoiceItemModel instance) =>
    <String, dynamic>{
      'orderId': instance.orderId,
      'itemId': instance.itemId,
      'uniqueId': instance.uniqueId,
      'citemid': instance.citemid,
      'citemName': instance.citemName,
      'contractPrice': instance.contractPrice,
      'price': instance.price,
      'onlinePrice': instance.onlinePrice,
    };
