import 'package:domain/constants/payment/goalone_payment_status.dart';
import 'package:domain/model/payment_invitations/Invitation_data.dart';

class PaymentInvitations {
  int count;
  int skip;
  int take;
  List<InvitationData> list;
  String currency;

  PaymentInvitations(
      {this.count: 10,
      this.skip: 0,
      this.take: 10,
      this.list,
      this.currency: GoalOnePaymentStatus.CURRENCY_OMR});
}
