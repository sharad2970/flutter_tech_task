class BookingDetailsRequest {
  final int orderId;
  final int subOrderId;
  final int pitchId;
  final bool isBackPressedEnabled;

  BookingDetailsRequest(
      {this.orderId,
      this.subOrderId,
      this.pitchId,
      this.isBackPressedEnabled: true});
}
