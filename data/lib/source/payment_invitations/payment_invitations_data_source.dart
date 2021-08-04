import 'package:data/entity/remote/payment_invitations/payment_invitations_response.dart';
import 'package:flutter/widgets.dart';
import 'package:retrofit/retrofit.dart';

abstract class PaymentInvitationsRemoteDS {
  Future<HttpResponse<PaymentInvitationsResponse>> getPaymentInvitationList(
      {@required String search, @required int skip, @required int take});
}
