import 'package:dartz/dartz.dart';
import 'package:data/network/rest/api_interceptor.dart';
import 'package:data/network/rest/utils/safe_api_call.dart';
import 'package:data/source/pitch_booking_multiple/pitch_booking_multiple_data_source.dart';
import 'package:dio/dio.dart';
import 'package:domain/error/network_error.dart';
import 'package:domain/model/pitch_booking_multiple/pitch_booking_count.dart';
import 'package:domain/model/pitch_booking_multiple/update_pitch_request.dart';
import 'package:domain/repository/pitch_booking_multiple/pitch_booking_multiple_repository.dart';
import 'package:domain/repository/user/user_repository.dart';
import 'package:domain/model/pitch_booking_multiple/update_pitch.dart';

/// Implementation to [PitchBookingMultipleRepositoryImpl]
class PitchBookingMultipleRepositoryImpl
    extends PitchBookingMultipleRepository {
  final PitchBookingMultipleRemoteDS _pitchBookingMultipleRemoteDS;
  final UserRepository _userRepository;
  final Dio _dio;

  PitchBookingMultipleRepositoryImpl(
      this._pitchBookingMultipleRemoteDS, this._userRepository, this._dio) {
    _dio.interceptors.add(ApiInterceptor(this._userRepository, _dio));
  }

  @override
  Future<Either<NetworkError, PitchBookingCount>> getAvailablePitchesCount(
      {String pitchCount}) async {
    final response = await safeApiCall(_pitchBookingMultipleRemoteDS
        .getPitchBookingCount(pitchCount: pitchCount));
    return response.fold((l) => Left(l), (r) {
      return Right(
        r.data.data.transform(),
      );
    });
  }

  @override
  Future<Either<NetworkError, UpdatePitch>> updatePitch(
      {UpdatePitchRequest request}) async {
    final response = await safeApiCall(_pitchBookingMultipleRemoteDS.updatePitchBooking(request: request));
    return response.fold((l) => Left(l), (r) {
      return Right(
        r.data.transform(),
      );
    });
  }
}
