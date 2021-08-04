class BookingDetailsRequestInfo {
  int orderId;
  String date;
  String time;
  String duration;
  int pitchNumber;
  String bookingDate;
  String bookingType;
  String paymentType;
  String paymentStatus;
  bool cancel;
  String amountPaid;
  String totalAmount;
  String bottleCount;

  BookingDetailsRequestInfo({
    this.orderId,
    this.date,
    this.time,
    this.duration,
    this.pitchNumber,
    this.bookingDate,
    this.bookingType,
    this.paymentType,
    this.paymentStatus,
    this.cancel,
    this.amountPaid,
    this.totalAmount,
    this.bottleCount,
  });
}
