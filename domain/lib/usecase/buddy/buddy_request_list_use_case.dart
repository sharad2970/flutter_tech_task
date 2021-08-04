import 'package:dartz/dartz.dart';
import 'package:domain/error/goal_one_error.dart';
import 'package:domain/error/network_error.dart';
import 'package:domain/model/buddy/buddy_request_info.dart';
import 'package:domain/repository/buddy/buddy_repository.dart';
import 'package:domain/usecase/base/base_usecase.dart';
import 'package:domain/usecase/base/params.dart';

class BuddyRequestListUseCase extends BaseUseCase<NetworkError,
    BuddyRequestListUseCaseParams, BuddyRequestInfo> {
  BuddyRepository _repository;

  BuddyRequestListUseCase(this._repository);

  @override
  Future<Either<NetworkError, BuddyRequestInfo>> execute(
      {BuddyRequestListUseCaseParams params}) {
    return _repository.getBuddyRequestList(
        search: params.search, skip: params.skip, take: params.take);
  }
}

class BuddyRequestListUseCaseParams extends Params {
  String search;
  int skip;
  int take;

  BuddyRequestListUseCaseParams({this.search, this.skip, this.take});

  @override
  Either<GoalOneAppError, bool> verify() {
    return Right(true);
  }
}
