import 'package:domain/model/invitebuddies/player_id.dart';

/// request data class to invite buddies
class InviteBuddiesRequest {
  final String orderId;
  final String paymentMethod;
  final String orderStatus;
  final String paymentStatus;
  final List<PlayerId> buddiesList;

  InviteBuddiesRequest(
      {this.orderId: '',
      this.paymentMethod: '',
      this.orderStatus: '',
      this.paymentStatus: '',
      this.buddiesList});
}
