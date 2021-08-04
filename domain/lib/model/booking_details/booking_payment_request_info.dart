class BookingsPaymentRequestInfo {
  final String orderId;
  final bool canCancelOrder;
  final int pitchId;
  final int subOrderId;

  BookingsPaymentRequestInfo(
      {this.orderId, this.subOrderId, this.canCancelOrder, this.pitchId});
}
