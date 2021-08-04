import 'package:dartz/dartz.dart';
import 'package:domain/constants/goal_one_errors.dart';
import 'package:domain/error/goal_one_error.dart';
import 'package:domain/error/network_error.dart';
import 'package:domain/model/base/error_info.dart';
import 'package:domain/model/pitch_booking_multiple/update_pitch.dart';
import 'package:domain/model/pitch_booking_multiple/update_pitch_request.dart';
import 'package:domain/repository/pitch_booking_multiple/pitch_booking_multiple_repository.dart';
import 'package:domain/usecase/base/base_usecase.dart';
import 'package:domain/usecase/base/params.dart';
import 'package:domain/utils/validator.dart';

class UpdatePitchBookingUseCase
    extends BaseUseCase<NetworkError, UpdatePitchBookingUseCaseParams, UpdatePitch> {
  PitchBookingMultipleRepository _pitchBookingMultipleRepository;

  UpdatePitchBookingUseCase(this._pitchBookingMultipleRepository);

  @override
  Future<Either<NetworkError, UpdatePitch>> execute(
      {UpdatePitchBookingUseCaseParams params}) {
    return _pitchBookingMultipleRepository.updatePitch(request: params.request);
  }
}

class UpdatePitchBookingUseCaseParams extends Params {
  final UpdatePitchRequest request;

  UpdatePitchBookingUseCaseParams({this.request});

  @override
  Either<GoalOneAppError, bool> verify() {
    if (request.date == null || Validator.isEmpty(request.date)) {
      return Left(GoalOneAppError(
          type: ErrorType.EMPTY_DATE,
          throwable: Exception(),
          error: ErrorInfo(message: 'EMPTY_DATE')));
    } else if (request.startTime == null ||
        Validator.isEmpty(request.startTime)) {
      return Left(GoalOneAppError(
          type: ErrorType.EMPTY_START_TIME,
          throwable: Exception(),
          error: ErrorInfo(message: 'EMPTY_START_TIME')));
    } else if (request.endTime == null || Validator.isEmpty(request.endTime)) {
      return Left(GoalOneAppError(
          type: ErrorType.EMPTY_END_TIME,
          throwable: Exception(),
          error: ErrorInfo(message: 'EMPTY_END_TIME')));
    } else if (request.pitchId == null || Validator.isEmpty(request.pitchId)) {
      return Left(GoalOneAppError(
          type: ErrorType.EMPTY_PITCH_ID,
          throwable: Exception(),
          error: ErrorInfo(message: 'EMPTY_PITCH_ID')));
    } else if (request.orderId == null || Validator.isEmpty(request.orderId)) {
      return Left(GoalOneAppError(
          type: ErrorType.EMPTY_ORDER_ID,
          throwable: Exception(),
          error: ErrorInfo(message: 'EMPTY_ORDER_ID')));
    } else if (request.subOrderId == null ||
        Validator.isEmpty(request.subOrderId)) {
      return Left(GoalOneAppError(
          type: ErrorType.EMPTY_SUB_ORDER_ID,
          throwable: Exception(),
          error: ErrorInfo(message: 'EMPTY_SUB_ORDER_ID')));
    }
    return Right(true);
  }
}
