import 'package:dartz/dartz.dart';
import 'package:domain/error/goal_one_error.dart';
import 'package:domain/error/network_error.dart';
import 'package:domain/model/leagues/league_list_info.dart';
import 'package:domain/model/leagues/leagues.dart';
import 'package:domain/repository/leagues/leagues_repository.dart';
import 'package:domain/usecase/base/base_usecase.dart';
import 'package:domain/usecase/base/params.dart';

class LeaguesUseCase
    extends BaseUseCase<NetworkError, LeaguesUseCaseParams, LeagueListInfo> {
 final LeaguesRepository _repository;

  LeaguesUseCase(this._repository);

  @override
  Future<Either<NetworkError, LeagueListInfo>> execute(
      {LeaguesUseCaseParams params}) {
    return _repository.getLeagues(skip: params.skip, take: params.take);
  }
}

class LeaguesUseCaseParams extends Params {
  int skip;
  int take;

  LeaguesUseCaseParams({this.skip, this.take});
  @override
  Either<GoalOneAppError, bool> verify() {
    return Right(true);
  }
}
