import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/domain.dart';

import 'models.dart';

part 'checkout_order.freezed.dart';
part 'checkout_order.g.dart';

@freezed
class CheckOutOrderModel extends CheckOutOrderEntity with _$CheckOutOrderModel {
  const factory CheckOutOrderModel({
    required final String orderId,
    required final String orderType,
    final String? refNo,
    final DateTime? createDate,
    final DateTime? orderDate,
    final bool? preOrder,
    final String? orderComment,
    final num? orderWaitingTime,
    final String? shopImage,
    final String? shopName,
    final String? shopAddress,
    final String? collaboratorId,
    final String? cusId,
    final String? cusName,
    final num? lat,
    final num? long,
    final num? sourceLat,
    final num? sourceLong,
    final String? township,
    final String? detailAddress,
    final String? addressNote,
    final String? phone,
    final String? email,
    final num? distanceMeter,
    final num? itemQty,
    final num? totalContractPrice,
    final num? totalPrice,
    final num? discountAmt,
    final num? totalOnlinePrice,
    final num? containerCharges,
    final num? deliCharges,
    final num? creditCharges,
    final num? promoAmt,
    final num? promoCode,
    final num? tax,
    final num? subTotal,
    final num? tipsMoney,
    final num? grandTotal,
    final String? paymentType,
    final String? pickupDate,
    final String? orderStatus,
    final String? bikerName,
    final String? bikerPhone,
    final String? bikerImage,
    final String? bikerFees,
    final List<OrderMenuItemModel>? orderItems,
    final List<OrderChoiceItemModel>? orderChoices,
  }) = _CheckOutOrderModel;

  factory CheckOutOrderModel.fromJson(Map<String, dynamic> json) =>
      _$CheckOutOrderModelFromJson(json);

  factory CheckOutOrderModel.fromEntity(CheckOutOrderEntity entity) =>
      CheckOutOrderModel(
        orderId: entity.orderId,
        orderType: entity.orderType,
        refNo: entity.refNo,
        createDate: entity.createDate,
        orderDate: entity.orderDate,
        preOrder: entity.preOrder,
        orderComment: entity.orderComment,
        orderWaitingTime: entity.orderWaitingTime,
        shopImage: entity.shopImage,
        shopName: entity.shopName,
        shopAddress: entity.shopAddress,
        collaboratorId: entity.collaboratorId,
        cusId: entity.cusId,
        cusName: entity.cusName,
        lat: entity.lat,
        long: entity.long,
        sourceLat: entity.sourceLat,
        sourceLong: entity.sourceLong,
        township: entity.township,
        detailAddress: entity.detailAddress,
        addressNote: entity.addressNote,
        phone: entity.phone,
        email: entity.email,
        distanceMeter: entity.distanceMeter,
        itemQty: entity.itemQty,
        totalContractPrice: entity.totalContractPrice,
        totalPrice: entity.totalPrice,
        discountAmt: entity.discountAmt,
        totalOnlinePrice: entity.totalOnlinePrice,
        containerCharges: entity.containerCharges,
        deliCharges: entity.deliCharges,
        creditCharges: entity.creditCharges,
        promoAmt: entity.promoAmt,
        promoCode: entity.promoCode,
        tax: entity.tax,
        subTotal: entity.subTotal,
        tipsMoney: entity.tipsMoney,
        grandTotal: entity.grandTotal,
        paymentType: entity.paymentType,
        pickupDate: entity.pickupDate,
        orderStatus: entity.orderStatus,
        bikerName: entity.bikerName,
        bikerPhone: entity.bikerPhone,
        bikerImage: entity.bikerImage,
        bikerFees: entity.bikerFees,
        orderItems: entity.orderItems == null
            ? null
            : entity.orderItems!
                .map((e) => OrderMenuItemModel.fromEntity(e))
                .toList(),
        orderChoices: entity.orderChoices == null
            ? null
            : entity.orderChoices!
                .map((e) => OrderChoiceItemModel.fromEntity(e))
                .toList(),
      );
}
