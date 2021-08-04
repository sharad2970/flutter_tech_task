import 'package:dartz/dartz.dart';
import 'package:domain/error/goal_one_error.dart';
import 'package:domain/error/network_error.dart';
import 'package:domain/model/leagues/league_list_info.dart';
import 'package:domain/model/leagues/leagues.dart';
import 'package:domain/model/popular_movies.dart';
import 'package:domain/repository/home/home_repository.dart';
import 'package:domain/repository/leagues/leagues_repository.dart';
import 'package:domain/usecase/base/base_usecase.dart';
import 'package:domain/usecase/base/params.dart';

class HomeUseCase
    extends BaseUseCase<NetworkError, HomeUseCaseParams, List<PopularMovies>> {
 final HomeRepository _repository;

 HomeUseCase(this._repository);

  @override
  Future<Either<NetworkError, List<PopularMovies>>> execute({HomeUseCaseParams params}) {
    return _repository.getPopularMovies();
  }
}

class HomeUseCaseParams extends Params {

  HomeUseCaseParams();
  @override
  Either<GoalOneAppError, bool> verify() {
    return Right(true);
  }
}
