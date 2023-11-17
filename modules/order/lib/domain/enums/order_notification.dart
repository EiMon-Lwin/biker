enum OrderNotification {
  newOrderAlert("NewOrderAlert"),
  notify("Notify"),
  customerPickup("CustomerPickup"),
  cancelOrder("CancelOrder"),
  reOrder("ReOrder"),
  returnOrder("ReturnOrder"),
  punishItem("PunishItem");

  const OrderNotification(this.type);
  final String type;
}
