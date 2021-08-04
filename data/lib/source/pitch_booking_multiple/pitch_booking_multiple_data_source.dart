import 'package:data/entity/remote/pitch_booking_multiple/pitch_booking_count_response.dart';
import 'package:data/entity/remote/pitch_booking_multiple/update_pitch_booking_response.dart';
import 'package:domain/model/pitch_booking_multiple/update_pitch_request.dart';
import 'package:flutter/material.dart';
import 'package:retrofit/retrofit.dart';

/// Remote Data Source
abstract class PitchBookingMultipleRemoteDS {
  Future<HttpResponse<PitchBookingCountResponse>> getPitchBookingCount(
      {@required String pitchCount});

  Future<HttpResponse<UpdatePitchBookingResponse>> updatePitchBooking(
      {@required UpdatePitchRequest request});
}
