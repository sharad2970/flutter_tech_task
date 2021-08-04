import 'package:domain/model/bookpitch/blocked_pitch.dart';

class UpdatePaymentStatus {
  final double splitAmount;
  final List<BlockedPitch> blockedPitchIds;
  final bool isBookingSessionExpired;

  UpdatePaymentStatus({this.splitAmount, this.blockedPitchIds,  this.isBookingSessionExpired: false});
}
