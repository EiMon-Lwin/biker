// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'checkout_order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CheckOutOrderModel _$$_CheckOutOrderModelFromJson(
        Map<String, dynamic> json) =>
    _$_CheckOutOrderModel(
      orderId: json['orderId'] as String,
      orderType: json['orderType'] as String,
      refNo: json['refNo'] as String?,
      createDate: json['createDate'] == null
          ? null
          : DateTime.parse(json['createDate'] as String),
      orderDate: json['orderDate'] == null
          ? null
          : DateTime.parse(json['orderDate'] as String),
      preOrder: json['preOrder'] as bool?,
      orderComment: json['orderComment'] as String?,
      orderWaitingTime: json['orderWaitingTime'] as num?,
      shopImage: json['shopImage'] as String?,
      shopName: json['shopName'] as String?,
      shopAddress: json['shopAddress'] as String?,
      collaboratorId: json['collaboratorId'] as String?,
      cusId: json['cusId'] as String?,
      cusName: json['cusName'] as String?,
      lat: json['lat'] as num?,
      long: json['long'] as num?,
      sourceLat: json['sourceLat'] as num?,
      sourceLong: json['sourceLong'] as num?,
      township: json['township'] as String?,
      detailAddress: json['detailAddress'] as String?,
      addressNote: json['addressNote'] as String?,
      phone: json['phone'] as String?,
      email: json['email'] as String?,
      distanceMeter: json['distanceMeter'] as num?,
      itemQty: json['itemQty'] as num?,
      totalContractPrice: json['totalContractPrice'] as num?,
      totalPrice: json['totalPrice'] as num?,
      discountAmt: json['discountAmt'] as num?,
      totalOnlinePrice: json['totalOnlinePrice'] as num?,
      containerCharges: json['containerCharges'] as num?,
      deliCharges: json['deliCharges'] as num?,
      creditCharges: json['creditCharges'] as num?,
      promoAmt: json['promoAmt'] as num?,
      promoCode: json['promoCode'] as num?,
      tax: json['tax'] as num?,
      subTotal: json['subTotal'] as num?,
      tipsMoney: json['tipsMoney'] as num?,
      grandTotal: json['grandTotal'] as num?,
      paymentType: json['paymentType'] as String?,
      pickupDate: json['pickupDate'] as String?,
      orderStatus: json['orderStatus'] as String?,
      bikerName: json['bikerName'] as String?,
      bikerPhone: json['bikerPhone'] as String?,
      bikerImage: json['bikerImage'] as String?,
      bikerFees: json['bikerFees'] as String?,
      orderItems: (json['orderItems'] as List<dynamic>?)
          ?.map((e) => OrderMenuItemModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      orderChoices: (json['orderChoices'] as List<dynamic>?)
          ?.map((e) => OrderChoiceItemModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CheckOutOrderModelToJson(
        _$_CheckOutOrderModel instance) =>
    <String, dynamic>{
      'orderId': instance.orderId,
      'orderType': instance.orderType,
      'refNo': instance.refNo,
      'createDate': instance.createDate?.toIso8601String(),
      'orderDate': instance.orderDate?.toIso8601String(),
      'preOrder': instance.preOrder,
      'orderComment': instance.orderComment,
      'orderWaitingTime': instance.orderWaitingTime,
      'shopImage': instance.shopImage,
      'shopName': instance.shopName,
      'shopAddress': instance.shopAddress,
      'collaboratorId': instance.collaboratorId,
      'cusId': instance.cusId,
      'cusName': instance.cusName,
      'lat': instance.lat,
      'long': instance.long,
      'sourceLat': instance.sourceLat,
      'sourceLong': instance.sourceLong,
      'township': instance.township,
      'detailAddress': instance.detailAddress,
      'addressNote': instance.addressNote,
      'phone': instance.phone,
      'email': instance.email,
      'distanceMeter': instance.distanceMeter,
      'itemQty': instance.itemQty,
      'totalContractPrice': instance.totalContractPrice,
      'totalPrice': instance.totalPrice,
      'discountAmt': instance.discountAmt,
      'totalOnlinePrice': instance.totalOnlinePrice,
      'containerCharges': instance.containerCharges,
      'deliCharges': instance.deliCharges,
      'creditCharges': instance.creditCharges,
      'promoAmt': instance.promoAmt,
      'promoCode': instance.promoCode,
      'tax': instance.tax,
      'subTotal': instance.subTotal,
      'tipsMoney': instance.tipsMoney,
      'grandTotal': instance.grandTotal,
      'paymentType': instance.paymentType,
      'pickupDate': instance.pickupDate,
      'orderStatus': instance.orderStatus,
      'bikerName': instance.bikerName,
      'bikerPhone': instance.bikerPhone,
      'bikerImage': instance.bikerImage,
      'bikerFees': instance.bikerFees,
      'orderItems': instance.orderItems,
      'orderChoices': instance.orderChoices,
    };
