import 'package:dartz/dartz.dart';
import 'package:domain/error/network_error.dart';
import 'package:domain/model/book_pitch_request.dart';
import 'package:domain/model/bookpitch/available_pitch_request.dart';
import 'package:domain/model/bookpitch/available_pitches.dart';
import 'package:domain/model/bookpitch/pitch_booking.dart';
import 'package:domain/model/bookpitch/pitch_booking_bottles.dart';
import 'package:domain/model/invitebuddies/Invite_buddies.dart';
import 'package:domain/model/invitebuddies/Invite_buddies_request.dart';
import 'package:domain/model/payment/order_details.dart';
import 'package:domain/model/payment/payment_methods.dart';
import 'package:domain/model/payment/update_payment_status.dart';

/// Pitch Booking module repository provider
abstract class PitchBookRepository {
  /// fetch all available pitches depending input [AvailablePitchRequest]
  Future<Either<NetworkError, List<AvailablePitches>>> getAvailablePitchList(
      {AvailablePitchRequest request});

  /// book a pitch
  Future<Either<NetworkError, PitchBooking>> bookPitch(
      {BookPitchRequest request});

  Future<Either<NetworkError, InviteBuddies>> inviteBuddiesBooking(
      {InviteBuddiesRequest request});

  Future<Either<NetworkError, List<PaymentMethods>>> getPaymentMethods(
      {bool splitShow, String orderId});

  Future<Either<NetworkError, OrderDetails>> getOrderDetails({String orderId});

  Future<Either<NetworkError, UpdatePaymentStatus>> updateSplitPaymentStatus(
      {String orderId, String paymentMethod});

  Future<Either<NetworkError, List<PitchBookingBottles>>> getBottles();
}
