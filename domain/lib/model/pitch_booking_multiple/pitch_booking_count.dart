import 'package:domain/model/pitch_booking_multiple/booked_pitch.dart';

class PitchBookingCount {
  final int count;
  List<BookedPitch> bookedPitchesList = [];

  PitchBookingCount({this.count: -1, this.bookedPitchesList});
}
