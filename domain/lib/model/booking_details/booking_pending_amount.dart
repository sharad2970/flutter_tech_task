import 'package:domain/model/booking_details/booking_payment_details.dart';

class BookingPendingAmount {
  final double pendingAmount;
  final List<Player> players;

  BookingPendingAmount({this.pendingAmount, this.players : const []});
}
