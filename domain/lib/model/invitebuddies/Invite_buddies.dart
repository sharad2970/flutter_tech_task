import 'package:domain/model/bookpitch/blocked_pitch.dart';

/// invite buddies response class
class InviteBuddies {
  final num splitAmount;
  final List<BlockedPitch> blockPitchIds;
  final bool isBookingSessionExpired;
  final String message;

  InviteBuddies({this.splitAmount, this.blockPitchIds, this.isBookingSessionExpired: false,  this.message:''});
}
