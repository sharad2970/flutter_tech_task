/// request class to Book Pitch at particular date time slot
class BookPitchRequest {
  final String pitchNumber;
  String date;
  final String startTime;
  final String endTime;
  final String noOfBookings;
  final String price;
  final String recurringStatus;
  String playerId;
  final int pitchId;
  final String orderId;
  bool isPitchBlocked;
  final String subOrderId;
  int bottleId;

  BookPitchRequest(
      {this.pitchNumber,
      this.date,
      this.startTime,
      this.endTime,
      this.noOfBookings,
      this.price,
      this.recurringStatus,
      this.playerId,
      this.pitchId,
      this.orderId,
      this.isPitchBlocked: false,
      this.subOrderId,
      this.bottleId});
}
