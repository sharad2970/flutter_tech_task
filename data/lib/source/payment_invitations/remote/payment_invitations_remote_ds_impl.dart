import 'package:data/entity/local/user_db_entity.dart';
import 'package:data/entity/remote/payment_invitations/payment_invitations_request.dart';
import 'package:data/entity/remote/payment_invitations/payment_invitations_response.dart';
import 'package:data/network/rest/api_service.dart';
import 'package:data/source/user/user_data_sources.dart';
import 'package:retrofit/dio.dart';

import '../payment_invitations_data_source.dart';

class PaymentInvitationsRemoteDSImpl extends PaymentInvitationsRemoteDS {
  final ApiService _apiService;
  final UserLocalDS _userLocalDS;

  PaymentInvitationsRemoteDSImpl(this._apiService, this._userLocalDS);

  @override
  Future<HttpResponse<PaymentInvitationsResponse>> getPaymentInvitationList(
      {String search, int skip, int take}) async {
    UserDBEntity user = await _userLocalDS.getCurrentUser();

    return _apiService.getPaymentInvitations(
        request: PaymentInvitationsRequest(
            playerId: '${user.id}', skip: skip, take: take));
  }
}
