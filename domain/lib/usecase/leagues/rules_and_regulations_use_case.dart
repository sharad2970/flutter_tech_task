import 'package:dartz/dartz.dart';
import 'package:domain/constants/enum/booking_type_enum.dart';
import 'package:domain/constants/goal_one_errors.dart';
import 'package:domain/error/goal_one_error.dart';
import 'package:domain/error/network_error.dart';
import 'package:domain/model/base/error_info.dart';
import 'package:domain/repository/leagues/leagues_repository.dart';
import 'package:domain/usecase/base/base_usecase.dart';
import 'package:domain/usecase/base/params.dart';
import 'package:domain/utils/validator.dart';

class RulesAndRegulationsUseCase extends BaseUseCase<NetworkError,
    RulesAndRegulationsUseCaseParams, String> {
  final LeaguesRepository _repository;

  RulesAndRegulationsUseCase(this._repository);

  @override
  Future<Either<NetworkError, String>> execute(
      {RulesAndRegulationsUseCaseParams params}) {
    return _repository.getRulesAndRegulations(
        leagueId: params.leagueId, bookingTypeEnum: params.bookingTypeEnum);
  }
}

class RulesAndRegulationsUseCaseParams extends Params {
  final String leagueId;
  final BookingTypeEnum bookingTypeEnum;

  RulesAndRegulationsUseCaseParams({this.leagueId, this.bookingTypeEnum});

  @override
  Either<GoalOneAppError, bool> verify() {
    if (Validator.isEmpty(leagueId)) {
      return Left(GoalOneAppError(
          type: ErrorType.EMPTY_LEAGUE_TEAM_ID,
          throwable: Exception(),
          error: ErrorInfo(message: '')));
    }
    if (Validator.isEmpty(bookingTypeEnum.toString())) {
      return Left(GoalOneAppError(
          type: ErrorType.EMPTY_BOOKING_TYPE,
          throwable: Exception(),
          error: ErrorInfo(message: '')));
    }
    return Right(true);
  }
}
