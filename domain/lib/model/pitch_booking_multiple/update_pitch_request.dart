class UpdatePitchRequest {
  final String date;
  final String startTime;
  final String endTime;
  final String pitchId;
  final String orderId;
  final String subOrderId;
  final int bottleId;
  final String price;

  UpdatePitchRequest(
      {this.date,
      this.startTime,
      this.endTime,
      this.pitchId,
      this.orderId,
      this.subOrderId,
      this.bottleId,
      this.price});
}
