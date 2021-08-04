import 'package:dartz/dartz.dart';
import 'package:domain/constants/goal_one_errors.dart';
import 'package:domain/error/goal_one_error.dart';
import 'package:domain/error/network_error.dart';
import 'package:domain/model/base/error_info.dart';
import 'package:domain/model/bookpitch/available_pitch_request.dart';
import 'package:domain/model/bookpitch/available_pitches.dart';
import 'package:domain/repository/pitchbooking/pitch_book_repository.dart';
import 'package:domain/usecase/base/base_usecase.dart';
import 'package:domain/usecase/base/params.dart';
import 'package:domain/utils/validator.dart';

class AvailablePitchUseCase extends BaseUseCase<NetworkError,
    AvailablePitchUseCaseParams, List<AvailablePitches>> {
  PitchBookRepository _pitchBookRepository;

  AvailablePitchUseCase(this._pitchBookRepository);

  @override
  Future<Either<NetworkError, List<AvailablePitches>>> execute(
      {AvailablePitchUseCaseParams params}) {
    return _pitchBookRepository.getAvailablePitchList(
        request: AvailablePitchRequest(
            date: params.date,
            startTime: params.startTime,
            endTime: params.endTime));
  }
}

class AvailablePitchUseCaseParams extends Params {
  final String date;
  final String startTime;
  final String endTime;

  AvailablePitchUseCaseParams({this.date, this.startTime, this.endTime});

  @override
  Either<GoalOneAppError, bool> verify() {
    if (Validator.isEmpty(date)) {
      return Left(GoalOneAppError(
          type: ErrorType.EMPTY_DATE,
          throwable: Exception(),
          error: ErrorInfo(message: '')));
    } else if (Validator.isEmpty(startTime)) {
      return Left(GoalOneAppError(
          type: ErrorType.EMPTY_START_TIME,
          throwable: Exception(),
          error: ErrorInfo(message: '')));
    } else if (Validator.isEmpty(endTime)) {
      return Left(GoalOneAppError(
          type: ErrorType.EMPTY_END_TIME,
          throwable: Exception(),
          error: ErrorInfo(message: '')));
    }
    return Right(true);
  }
}
