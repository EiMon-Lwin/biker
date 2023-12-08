// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shop_confirm.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ShopConfirmModel _$$_ShopConfirmModelFromJson(Map<String, dynamic> json) =>
    _$_ShopConfirmModel(
      orderId: json['orderId'] as String,
      itemId: json['itemId'] as String,
      uniqueId: json['uniqueId'] as String,
      shopId: json['shopId'] as String,
      confirmFlag: json['confirmFlag'] as bool,
    );

Map<String, dynamic> _$$_ShopConfirmModelToJson(_$_ShopConfirmModel instance) =>
    <String, dynamic>{
      'orderId': instance.orderId,
      'itemId': instance.itemId,
      'uniqueId': instance.uniqueId,
      'shopId': instance.shopId,
      'confirmFlag': instance.confirmFlag,
    };
