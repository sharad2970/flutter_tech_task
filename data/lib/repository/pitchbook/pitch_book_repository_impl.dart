import 'package:dartz/dartz.dart';
import 'package:data/entity/remote/invite_buddies/invite_buddies_request_entity.dart';
import 'package:data/entity/remote/invite_buddies/player_id_entity.dart';
import 'package:data/network/rest/api_interceptor.dart';
import 'package:data/network/rest/utils/safe_api_call.dart';
import 'package:data/source/pitchbook/pitch_book_data_source.dart';
import 'package:dio/dio.dart';
import 'package:domain/error/network_error.dart';
import 'package:domain/model/book_pitch_request.dart';
import 'package:domain/model/bookpitch/available_pitch_request.dart';
import 'package:domain/model/bookpitch/available_pitches.dart';
import 'package:domain/model/bookpitch/pitch_booking.dart';
import 'package:domain/model/bookpitch/pitch_booking_bottles.dart';
import 'package:domain/model/invitebuddies/Invite_buddies.dart';
import 'package:domain/model/invitebuddies/Invite_buddies_request.dart';
import 'package:domain/model/payment/order_details.dart';
import 'package:domain/model/payment/payment_methods.dart';
import 'package:domain/model/payment/update_payment_status.dart';
import 'package:domain/repository/pitchbooking/pitch_book_repository.dart';
import 'package:domain/repository/user/user_repository.dart';

/// Implementation to [PitchBookRepository]
class PitchBookRepositoryImpl extends PitchBookRepository {
  final PitchBookingRemoteDS _pitchBookingRemoteDS;
  final UserRepository _userRepository;
  final Dio _dio;

  PitchBookRepositoryImpl(
      this._pitchBookingRemoteDS, this._userRepository, this._dio) {
    _dio.interceptors.add(ApiInterceptor(this._userRepository, _dio));
  }

  @override
  Future<Either<NetworkError, List<AvailablePitches>>> getAvailablePitchList(
      {AvailablePitchRequest request}) async {
    final response = await safeApiCall(
        _pitchBookingRemoteDS.getAvailablePitchesList(request: request));

    return response.fold((l) => Left(l), (r) => Right(r.data.transform()));
  }

  @override
  Future<Either<NetworkError, PitchBooking>> bookPitch(
      {BookPitchRequest request}) async {
    final response =
        await safeApiCall(_pitchBookingRemoteDS.bookPitch(request: request));

    return response.fold((l) => Left(l), (r) => Right(r.data.transform()));
  }

  @override
  Future<Either<NetworkError, InviteBuddies>> inviteBuddiesBooking(
      {InviteBuddiesRequest request}) async {
    List<PlayerIdEntity> list = [];
    request.buddiesList.every((element) {
      list.add(PlayerIdEntity(id: element.id.toString()));
      return true;
    });

    final response = await safeApiCall(_pitchBookingRemoteDS.inviteBuddyBooking(
        InviteBuddiesRequestEntity(
            orderId: request.orderId,
            orderStatus: request.orderStatus,
            paymentMethod: request.paymentMethod,
            paymentStatus: request.paymentStatus,
            players: list)));
    return response.fold((l) => Left(l), (r) {
      return Right(
        r.data.data.transform(),
      );
    });
  }

  @override
  Future<Either<NetworkError, List<PaymentMethods>>> getPaymentMethods(
      {bool splitShow, String orderId}) async {
    final response = await safeApiCall(_pitchBookingRemoteDS.getPaymentMethods(
        splitShow: splitShow, orderId: orderId));
    return response.fold((l) => Left(l), (r) {
      return Right(
        r.data.transform(),
      );
    });
  }

  @override
  Future<Either<NetworkError, OrderDetails>> getOrderDetails(
      {String orderId}) async {
    final response =
        await safeApiCall(_pitchBookingRemoteDS.getOrderDetails(orderId));
    return response.fold((l) => Left(l), (r) {
      return Right(
        r.data.data.transform(),
      );
    });
  }

  @override
  Future<Either<NetworkError, UpdatePaymentStatus>> updateSplitPaymentStatus(
      {String orderId, String paymentMethod}) async {
    final response = await safeApiCall(
        _pitchBookingRemoteDS.updateSplitPaymentStatus(orderId, paymentMethod));
    return response.fold((l) => Left(l), (r) {
      return Right(
        r.data.transform(),
      );
    });
  }

  @override
  Future<Either<NetworkError, List<PitchBookingBottles>>> getBottles() async {
    final response = await safeApiCall(_pitchBookingRemoteDS.getBottlesList());
    return response.fold((l) => Left(l), (r) {
      return Right(
        r.data.transform(),
      );
    });
  }
}
