import 'package:dartz/dartz.dart';
import 'package:domain/error/goal_one_error.dart';
import 'package:domain/error/network_error.dart';
import 'package:domain/model/leagues/leagues.dart';
import 'package:domain/repository/league_details/league_details_repository.dart';
import 'package:domain/usecase/base/base_usecase.dart';
import 'package:domain/usecase/base/params.dart';

class LeagueDetailUseCase extends BaseUseCase<NetworkError,
    LeagueDetailUseCaseParams, List<Leagues>> {
  final LeagueDetailRepository _repository;

  LeagueDetailUseCase(this._repository);

  @override
  Future<Either<NetworkError, List<Leagues>>> execute(
      {LeagueDetailUseCaseParams params}) {
    return _repository.getLeagueDetail(leagueId: params.leagueId);
  }
}

class LeagueDetailUseCaseParams extends Params {
  String leagueId;

  LeagueDetailUseCaseParams({this.leagueId});

  @override
  Either<GoalOneAppError, bool> verify() {
    return Right(true);
  }
}
