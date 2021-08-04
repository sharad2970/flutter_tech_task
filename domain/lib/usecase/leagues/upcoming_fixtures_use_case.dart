import 'package:dartz/dartz.dart';
import 'package:domain/constants/goal_one_errors.dart';
import 'package:domain/error/goal_one_error.dart';
import 'package:domain/error/network_error.dart';
import 'package:domain/model/base/error_info.dart';
import 'package:domain/model/leagues/upcoming_fixtures.dart';
import 'package:domain/repository/leagues/leagues_repository.dart';
import 'package:domain/usecase/base/base_usecase.dart';
import 'package:domain/usecase/base/params.dart';
import 'package:domain/utils/validator.dart';

class UpcomingFixturesUseCase extends BaseUseCase<NetworkError,
    UpcomingFixturesUseCaseParams, List<UpcomingFixtures>> {
  final LeaguesRepository _repository;

  UpcomingFixturesUseCase(this._repository);

  @override
  Future<Either<NetworkError, List<UpcomingFixtures>>> execute(
      {UpcomingFixturesUseCaseParams params}) {
    return _repository.getUpcomingFixtures(leagueId: params.leagueId);
  }
}

class UpcomingFixturesUseCaseParams extends Params {
  final String leagueId;

  UpcomingFixturesUseCaseParams({this.leagueId});

  @override
  Either<GoalOneAppError, bool> verify() {
    if (leagueId == null || Validator.isEmpty(leagueId)) {
      return Left(GoalOneAppError(
          type: ErrorType.EMPTY_LEAGUE_TEAM_ID,
          throwable: Exception(),
          error: ErrorInfo(message: 'EMPTY TEAM ID')));
    }
    return Right(true);
  }
}
