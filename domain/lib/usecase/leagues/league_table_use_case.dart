import 'package:dartz/dartz.dart';
import 'package:domain/constants/goal_one_errors.dart';
import 'package:domain/error/goal_one_error.dart';
import 'package:domain/error/network_error.dart';
import 'package:domain/model/base/error_info.dart';
import 'package:domain/model/leagues/league_table.dart';
import 'package:domain/model/leagues/league_teams.dart';
import 'package:domain/repository/leagues/leagues_repository.dart';
import 'package:domain/usecase/base/base_usecase.dart';
import 'package:domain/usecase/base/params.dart';
import 'package:domain/utils/validator.dart';

class LeagueTableUseCase extends BaseUseCase<NetworkError,
    LeagueTableUseCaseParams, List<LeagueTable>> {
 final LeaguesRepository _repository;

  LeagueTableUseCase(this._repository);

  @override
  Future<Either<NetworkError, List<LeagueTable>>> execute(
      {LeagueTableUseCaseParams params}) {
    return _repository.getLeagueTable(leagueId: params.leagueId);
  }
}

class LeagueTableUseCaseParams extends Params {
  final String leagueId;

  LeagueTableUseCaseParams({this.leagueId});

  @override
  Either<GoalOneAppError, bool> verify() {
    if (leagueId == null || Validator.isEmpty(leagueId)) {
      return Left(GoalOneAppError(
          type: ErrorType.EMPTY_LEAGUE_TEAM_ID,
          throwable: Exception(),
          error: ErrorInfo(message: 'EMPTY LEAGUE ID')));
    }
    return Right(true);
  }
}
