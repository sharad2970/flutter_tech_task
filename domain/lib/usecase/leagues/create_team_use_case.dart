import 'package:dartz/dartz.dart';
import 'package:domain/constants/goal_one_errors.dart';
import 'package:domain/error/goal_one_error.dart';
import 'package:domain/error/network_error.dart';
import 'package:domain/model/base/error_info.dart';
import 'package:domain/model/leagues/create_league_team.dart';
import 'package:domain/model/leagues/create_team_league_request.dart';
import 'package:domain/repository/leagues/leagues_repository.dart';
import 'package:domain/usecase/base/base_usecase.dart';
import 'package:domain/usecase/base/params.dart';

class CreateLeagueTeamUseCase extends BaseUseCase<NetworkError,
    CreateLeagueTeamUseCaseParams, CreateLeagueTeam> {
  final LeaguesRepository _repository;

  CreateLeagueTeamUseCase(this._repository);

  @override
  Future<Either<NetworkError, CreateLeagueTeam>> execute(
      {CreateLeagueTeamUseCaseParams params}) {
    return _repository.createLeagueTeam(
        request: params.createTeamRequest);
  }
}

class CreateLeagueTeamUseCaseParams extends Params {
  final CreateTeamRequest createTeamRequest;

  CreateLeagueTeamUseCaseParams({this.createTeamRequest});

  @override
  Either<GoalOneAppError, bool> verify() {
    if (createTeamRequest.teamId == null ||
        createTeamRequest.teamId.isEmpty) {
      return Left(GoalOneAppError(
          type: ErrorType.EMPTY_LEAGUE_TEAM_ID,
          throwable: Exception(),
          error: ErrorInfo(message: 'Empty Team Id')));
    } else if (createTeamRequest.playerIds == null ||
        createTeamRequest.playerIds.isEmpty) {
      return Left(GoalOneAppError(
          type: ErrorType.EMPTY_BUDDY_LIST,
          throwable: Exception(),
          error: ErrorInfo(message: 'Empty buddy list')));
    }
    return Right(true);
  }
}
