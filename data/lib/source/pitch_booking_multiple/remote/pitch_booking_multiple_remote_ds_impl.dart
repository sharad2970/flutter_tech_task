import 'package:data/entity/local/user_db_entity.dart';
import 'package:data/entity/remote/pitch_booking_multiple/pitch_booking_count_request.dart';
import 'package:data/entity/remote/pitch_booking_multiple/pitch_booking_count_response.dart';
import 'package:data/entity/remote/pitch_booking_multiple/update_pitch_booking_request.dart';
import 'package:data/entity/remote/pitch_booking_multiple/update_pitch_booking_response.dart';
import 'package:data/network/rest/api_service.dart';
import 'package:data/source/pitch_booking_multiple/pitch_booking_multiple_data_source.dart';
import 'package:data/source/user/user_data_sources.dart';
import 'package:domain/model/pitch_booking_multiple/update_pitch_request.dart';
import 'package:retrofit/dio.dart';

/// implementation to Remote Data Source
class PitchBookingMultipleRemoteDSImpl extends PitchBookingMultipleRemoteDS {
  final ApiService _apiService;
  final UserLocalDS _userLocalDS;

  PitchBookingMultipleRemoteDSImpl(this._apiService, this._userLocalDS);

  @override
  Future<HttpResponse<PitchBookingCountResponse>> getPitchBookingCount(
      {String pitchCount}) async {
    UserDBEntity userDBEntity = await _userLocalDS.getCurrentUser();

    return _apiService.getPitchBookingCount(
        request: PitchBookingCountRequest(
            pitchCount: pitchCount, playerId: '${userDBEntity.id}'));
  }

  @override
  Future<HttpResponse<UpdatePitchBookingResponse>> updatePitchBooking(
      {UpdatePitchRequest request}) {
    return _apiService.updatePitchBooking(
        request: UpdatePitchBookingRequest(
      date: request.date,
      startTime: request.startTime,
      endTime: request.endTime,
      pitchId: request.pitchId,
      orderId: request.orderId,
      subOrderId: request.subOrderId,
      bottleId: request.bottleId,
      price: request.price,
    ));
  }
}
