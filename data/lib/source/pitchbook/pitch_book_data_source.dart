import 'package:data/entity/remote/invite_buddies/invite_buddies_request_entity.dart';
import 'package:data/entity/remote/invite_buddies/invite_buddies_response.dart';
import 'package:data/entity/remote/payment/order_details_response.dart';
import 'package:data/entity/remote/payment/payment_methods_response.dart';
import 'package:data/entity/remote/pitchbook/available_pitches_response.dart';
import 'package:data/entity/remote/pitchbook/book_pitch_response.dart';
import 'package:data/entity/remote/pitchbook/pitch_booking_bottles_list_response.dart';
import 'package:data/entity/remote/pitchbook/update_split_payment_status_response.dart';
import 'package:domain/model/book_pitch_request.dart';
import 'package:domain/model/bookpitch/available_pitch_request.dart';
import 'package:flutter/material.dart';
import 'package:retrofit/retrofit.dart';

/// Remote Data Source
abstract class PitchBookingRemoteDS {
  Future<HttpResponse<AvailablePitchesResponse>> getAvailablePitchesList(
      {@required AvailablePitchRequest request});

  Future<HttpResponse<BookPitchResponse>> bookPitch(
      {@required BookPitchRequest request});

  Future<HttpResponse<InviteBuddiesResponse>> inviteBuddyBooking(
      InviteBuddiesRequestEntity request);

  Future<HttpResponse<PaymentMethodsResponse>> getPaymentMethods(
      {bool splitShow, String orderId});

  Future<HttpResponse<OrderDetailsResponse>> getOrderDetails(String orderId);

  Future<HttpResponse<PitchBookingBottlesListResponse>> getBottlesList();

  Future<HttpResponse<UpdateSplitPaymentStatusResponse>>
      updateSplitPaymentStatus(String orderId, String paymentMethod);
}
