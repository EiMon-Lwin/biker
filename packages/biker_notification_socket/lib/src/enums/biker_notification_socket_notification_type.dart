enum BikerNotificationSocketNotificationType {
  assignedSchedule("AssignedSchedule"),
  newOrderAlert("NewOrderAlert"),
  orderAccept("OrderAccept"),
  readyConfirm("ReadyConfirm"),
  cancelOrder("CancelOrder"),
  returnOrder("ReturnOrder"),
  orderAssign("OrderAssign"),
  dropOff("DropOff");

  const BikerNotificationSocketNotificationType(this.type);
  final String type;
}
