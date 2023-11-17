import '../../domain/domain.dart';

class CheckOutOrderEntity {
  final String orderId;
  final String orderType;
  final String? refNo;
  final DateTime? createDate;
  final DateTime? orderDate;
  final bool? preOrder;
  final String? orderComment;
  final num? orderWaitingTime;
  final String? shopImage;
  final String? shopName;
  final String? shopAddress;
  final String? collaboratorId;
  final String? cusId;
  final String? cusName;
  final num? lat;
  final num? long;
  final num? sourceLat;
  final num? sourceLong;
  final String? township;
  final String? detailAddress;
  final String? addressNote;
  final String? phone;
  final String? email;
  final num? distanceMeter;
  final num? itemQty;
  final num? totalContractPrice;
  final num? totalPrice;
  final num? discountAmt;
  final num? totalOnlinePrice;
  final num? containerCharges;
  final num? deliCharges;
  final num? creditCharges;
  final num? promoAmt;
  final num? promoCode;
  final num? tax;
  final num? subTotal;
  final num? tipsMoney;
  final num? grandTotal;
  final String? paymentType;
  final String? pickupDate;
  final String? orderStatus;
  final String? bikerName;
  final String? bikerPhone;
  final String? bikerImage;
  final String? bikerFees;
  final List<OrderMenuItemEntity>? orderItems;
  final List<OrderChoiceItemEntity>? orderChoices;

  const CheckOutOrderEntity({
    required this.orderId,
    this.refNo,
    this.createDate,
    this.orderDate,
    this.preOrder,
    required this.orderType,
    this.orderComment,
    this.orderWaitingTime,
    this.shopImage,
    this.shopName,
    this.shopAddress,
    this.collaboratorId,
    this.cusId,
    this.cusName,
    this.lat,
    this.long,
    this.sourceLat,
    this.sourceLong,
    this.township,
    this.detailAddress,
    this.addressNote,
    this.phone,
    this.email,
    this.distanceMeter,
    this.itemQty,
    this.totalContractPrice,
    this.totalPrice,
    this.discountAmt,
    this.totalOnlinePrice,
    this.containerCharges,
    this.deliCharges,
    this.creditCharges,
    this.promoAmt,
    this.promoCode,
    this.tax,
    this.subTotal,
    this.tipsMoney,
    this.grandTotal,
    this.paymentType,
    this.pickupDate,
    this.orderStatus,
    this.bikerName,
    this.bikerPhone,
    this.bikerImage,
    this.bikerFees,
    required this.orderItems,
    required this.orderChoices,
  });
}
