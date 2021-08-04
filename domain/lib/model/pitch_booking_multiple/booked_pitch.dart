import 'package:domain/model/bookpitch/pitch_booking_bottles.dart';

class BookedPitch {
  String pitchNumber;
  String bookingDate;
  String startTime;
  String endTime;
  bool available;
  String price;
  bool isBooked;
  int index;
  String orderId;
  String subOrderId;
  bool isPitchBlocked;
  PitchBookingBottles pitchBookingBottles;

  BookedPitch(
      {this.pitchNumber,
      this.bookingDate,
      this.startTime,
      this.endTime,
      this.available,
      this.price,
      this.isBooked: false,
      this.index: -1,
      this.orderId,
      this.subOrderId,
      this.isPitchBlocked: false,
      this.pitchBookingBottles});
}
