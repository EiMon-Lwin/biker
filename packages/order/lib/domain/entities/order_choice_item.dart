class OrderChoiceItemEntity {
  final String orderId;
  final String itemId;
  final String uniqueId;
  final num? citemid;
  final String? citemName;
  final num? contractPrice;
  final num? price;
  final num? onlinePrice;

  const OrderChoiceItemEntity({
    required this.orderId,
    required this.itemId,
    required this.uniqueId,
    this.citemid,
    this.citemName,
    this.contractPrice,
    this.price,
    this.onlinePrice,
  });
}
