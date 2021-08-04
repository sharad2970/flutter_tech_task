import 'package:dartz/dartz.dart';
import 'package:domain/constants/goal_one_errors.dart';
import 'package:domain/error/goal_one_error.dart';
import 'package:domain/error/network_error.dart';
import 'package:domain/model/base/error_info.dart';
import 'package:domain/model/pitch_booking_multiple/pitch_booking_count.dart';
import 'package:domain/repository/pitch_booking_multiple/pitch_booking_multiple_repository.dart';
import 'package:domain/usecase/base/base_usecase.dart';
import 'package:domain/usecase/base/params.dart';
import 'package:domain/utils/validator.dart';

class PitchBookingCountUseCase extends BaseUseCase<NetworkError,
    PitchBookingCountUseCaseParams, PitchBookingCount> {
  PitchBookingMultipleRepository _pitchBookingMultipleRepository;

  PitchBookingCountUseCase(this._pitchBookingMultipleRepository);

  @override
  Future<Either<NetworkError, PitchBookingCount>> execute(
      {PitchBookingCountUseCaseParams params}) {
    return _pitchBookingMultipleRepository.getAvailablePitchesCount(
        pitchCount: params.pitchCount);
  }
}

class PitchBookingCountUseCaseParams extends Params {
  final String pitchCount;

  PitchBookingCountUseCaseParams({this.pitchCount});

  @override
  Either<GoalOneAppError, bool> verify() {
    if (Validator.isEmpty(pitchCount)) {
      return Left(GoalOneAppError(
          type: ErrorType.EMPTY_PITCH_COUNT,
          throwable: Exception(),
          error: ErrorInfo(message: '')));
    }
    return Right(true);
  }
}
