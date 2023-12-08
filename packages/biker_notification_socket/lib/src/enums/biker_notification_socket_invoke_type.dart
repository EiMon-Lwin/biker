enum BikerNotificationSocketInvokeType {
  saveConnection("SaveConnection"),
  sendTestMessage("SendTestMessage");

  const BikerNotificationSocketInvokeType(this.type);
  final String type;
}
