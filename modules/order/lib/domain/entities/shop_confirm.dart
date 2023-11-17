class ShopConfirmEntity {
  final String orderId;
  final String itemId;
  final String uniqueId;
  final String shopId;
  final bool confirmFlag;

  const ShopConfirmEntity({
    required this.orderId,
    required this.itemId,
    required this.uniqueId,
    required this.shopId,
    required this.confirmFlag,
  });
}
