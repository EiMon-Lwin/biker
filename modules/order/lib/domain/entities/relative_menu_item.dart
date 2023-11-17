class RelativeMenuItemEntity {
  final String itemId;
  final String? itemName;
  final String? itemNameMM;
  final String? image;
  final num? containerCharges;
  final num? contractPrice;
  final num? price;
  final num? discountPercent;
  final num? onlinePrice;

  const RelativeMenuItemEntity({
    required this.itemId,
    this.itemName,
    this.containerCharges,
    this.itemNameMM,
    this.image,
    this.contractPrice,
    this.price,
    this.discountPercent,
    this.onlinePrice,
  });
}
