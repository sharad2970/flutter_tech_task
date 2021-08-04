import 'package:dartz/dartz.dart';
import 'package:domain/constants/goal_one_errors.dart';
import 'package:domain/error/goal_one_error.dart';
import 'package:domain/error/network_error.dart';
import 'package:domain/model/base/error_info.dart';
import 'package:domain/model/leagues/league_teams.dart';
import 'package:domain/repository/leagues/leagues_repository.dart';
import 'package:domain/usecase/base/base_usecase.dart';
import 'package:domain/usecase/base/params.dart';
import 'package:domain/utils/validator.dart';

class LeagueTeamsUseCase extends BaseUseCase<NetworkError,
    LeagueTeamsUseCaseParams, List<LeagueTeams>> {
  LeaguesRepository _repository;

  LeagueTeamsUseCase(this._repository);

  @override
  Future<Either<NetworkError, List<LeagueTeams>>> execute(
      {LeagueTeamsUseCaseParams params}) {
    return _repository.getLeagueTeams(leagueId: params.leagueId);
  }
}

class LeagueTeamsUseCaseParams extends Params {
  final String leagueId;

  LeagueTeamsUseCaseParams({this.leagueId});

  @override
  Either<GoalOneAppError, bool> verify() {
    if (Validator.isEmpty(leagueId)) {
      return Left(GoalOneAppError(
          type: ErrorType.EMPTY_LEAGUE_TEAM_ID,
          throwable: Exception(),
          error: ErrorInfo(message: '')));
    }
    return Right(true);
  }
}
