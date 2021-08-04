import 'package:dartz/dartz.dart';
import 'package:domain/error/goal_one_error.dart';
import 'package:domain/error/network_error.dart';
import 'package:domain/model/buddy/buddy_friend_info.dart';
import 'package:domain/repository/buddy/buddy_repository.dart';
import 'package:domain/usecase/base/base_usecase.dart';
import 'package:domain/usecase/base/params.dart';

class BuddyFriendListUseCase extends BaseUseCase<NetworkError,
    BuddyFriendListUseCaseParams, BuddyFriendInfo> {
  BuddyRepository _repository;

  BuddyFriendListUseCase(this._repository);

  @override
  Future<Either<NetworkError, BuddyFriendInfo>> execute(
      {BuddyFriendListUseCaseParams params}) {
    return _repository.getBuddyFriendList(
        search: params.search,
        skip: params.skip,
        take: params.take,
        type: params.type,
        typeId: params.typeId);
  }
}

class BuddyFriendListUseCaseParams extends Params {
  String search;
  int skip;
  int take;
  String type;
  String typeId;

  BuddyFriendListUseCaseParams(
      {this.search, this.skip, this.take, this.type, this.typeId});

  @override
  Either<GoalOneAppError, bool> verify() {
    return Right(true);
  }
}
