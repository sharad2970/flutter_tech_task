class OrderInfo {
  int orderId;
  int pitchId;
  String date;
  String startTime;
  String endTime;
  int subOrderId;

  OrderInfo(
      {this.orderId,
      this.subOrderId,
      this.pitchId,
      this.date,
      this.startTime,
      this.endTime});

  @override
  String toString() {
    return 'OrderInfo{order_id: $orderId, pitchId: $pitchId, date: $date, startTime: $startTime, endTime: $endTime}';
  }
}
