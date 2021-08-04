import 'package:data/entity/local/user_db_entity.dart';
import 'package:data/entity/remote/invite_buddies/invite_buddies_request_entity.dart';
import 'package:data/entity/remote/invite_buddies/invite_buddies_response.dart';
import 'package:data/entity/remote/invite_buddies/player_id_entity.dart';
import 'package:data/entity/remote/payment/order_details_request_entity.dart';
import 'package:data/entity/remote/payment/order_details_response.dart';
import 'package:data/entity/remote/payment/payment_methods_response.dart';
import 'package:data/entity/remote/pitchbook/available_pitch_request_entity.dart';
import 'package:data/entity/remote/pitchbook/available_pitches_response.dart';
import 'package:data/entity/remote/pitchbook/book_pitch_request_entity.dart';
import 'package:data/entity/remote/pitchbook/book_pitch_response.dart';
import 'package:data/entity/remote/pitchbook/pitch_booking_bottles_list_response.dart';
import 'package:data/entity/remote/pitchbook/update_split_payment_status_request.dart';
import 'package:data/entity/remote/pitchbook/update_split_payment_status_response.dart';
import 'package:data/network/rest/api_service.dart';
import 'package:data/source/pitchbook/pitch_book_data_source.dart';
import 'package:data/source/user/user_data_sources.dart';
import 'package:domain/model/book_pitch_request.dart';
import 'package:domain/model/bookpitch/available_pitch_request.dart';
import 'package:domain/model/user.dart';
import 'package:retrofit/dio.dart';

/// implementation to Remote Data Source
class PitchBookRemoteDSImpl extends PitchBookingRemoteDS {
  final ApiService _apiService;
  final UserLocalDS _userLocalDS;

  PitchBookRemoteDSImpl(this._apiService, this._userLocalDS);

  @override
  Future<HttpResponse<AvailablePitchesResponse>> getAvailablePitchesList(
      {AvailablePitchRequest request}) {
    return _apiService.getAvailablePitchesListApiCall(
        request: AvailablePitchRequestEntity(
            date: request.date,
            startTime: request.startTime,
            endTime: request.endTime));
  }

  @override
  Future<HttpResponse<BookPitchResponse>> bookPitch(
      {BookPitchRequest request}) async {
    UserDBEntity userDBEntity = await _userLocalDS.getCurrentUser();
    User user = userDBEntity.transform();
    request.playerId = '${user.id}';

    return _apiService.bookPitch(
        request: BookPitchRequestEntity(
      date: request.date,
      startTime: request.startTime,
      endTime: request.endTime,
      numberOfBookings: request.noOfBookings,
      price: request.price,
      recurringStatus: request.recurringStatus,
      playerId: '${user.id}',
      pitchId: '${request.pitchId}',
      orderId: request.orderId,
      orderType: request.noOfBookings,
      subOrderId: request.subOrderId,
      bottleId: request.bottleId ?? null,
    ));
  }

  @override
  Future<HttpResponse<InviteBuddiesResponse>> inviteBuddyBooking(
      InviteBuddiesRequestEntity request) async {
    UserDBEntity userDBEntity = await _userLocalDS.getCurrentUser();
    User user = userDBEntity.transform();
    request.players.add(PlayerIdEntity(id: '${user.id}'));
    return _apiService.inviteBuddiesBooking(request: request);
  }

  @override
  Future<HttpResponse<PaymentMethodsResponse>> getPaymentMethods(
      {bool splitShow, String orderId}) {
    return _apiService.getPaymentMethods(
        splitShow: splitShow, orderId: orderId);
  }

  @override
  Future<HttpResponse<OrderDetailsResponse>> getOrderDetails(String orderId) {
    return _apiService.getOrderDetails(
        request: OrderDetailsRequestEntity(orderId: orderId));
  }

  @override
  Future<HttpResponse<PitchBookingBottlesListResponse>> getBottlesList() {
    return _apiService.getBottlesList();
  }

  @override
  Future<HttpResponse<UpdateSplitPaymentStatusResponse>>
      updateSplitPaymentStatus(String orderId, String paymentMethod) {
    return _apiService.updateSplitPaymentStatus(
        request: UpdateSplitPaymentRequest(
            orderId: orderId, paymentMethod: paymentMethod));
  }
}
