import 'package:dartz/dartz.dart';
import 'package:domain/error/goal_one_error.dart';
import 'package:domain/error/network_error.dart';
import 'package:domain/model/buddy/buddy_player_info.dart';
import 'package:domain/repository/buddy/buddy_repository.dart';
import 'package:domain/usecase/base/base_usecase.dart';
import 'package:domain/usecase/base/params.dart';

class BuddyPlayerListUseCase extends BaseUseCase<NetworkError,
    BuddyPlayerListUseCaseParams, BuddyPlayerInfo> {
  BuddyRepository _repository;

  BuddyPlayerListUseCase(this._repository);

  @override
  Future<Either<NetworkError, BuddyPlayerInfo>> execute(
      {BuddyPlayerListUseCaseParams params}) {
    return _repository.getBuddyPlayerList(
        search: params.search, skip: params.skip, take: params.take);
  }
}

class BuddyPlayerListUseCaseParams extends Params {
  String search;
  int skip;
  int take;

  BuddyPlayerListUseCaseParams({this.search, this.skip, this.take});

  @override
  Either<GoalOneAppError, bool> verify() {
    return Right(true);
  }
}
