import 'package:dartz/dartz.dart';
import 'package:domain/error/goal_one_error.dart';
import 'package:domain/error/network_error.dart';
import 'package:domain/model/buddy/player.dart';
import 'package:domain/repository/buddy/buddy_repository.dart';
import 'package:domain/usecase/base/base_usecase.dart';
import 'package:domain/usecase/base/params.dart';

class AddBuddyUseCase
    extends BaseUseCase<NetworkError, AddBuddyUseCaseParams, Player> {
  BuddyRepository _repository;

  AddBuddyUseCase(this._repository);

  @override
  Future<Either<NetworkError, Player>> execute({AddBuddyUseCaseParams params}) {
    return _repository.addBuddy(receiverId: params.receiverId);
  }
}

class AddBuddyUseCaseParams extends Params {
  String receiverId;

  AddBuddyUseCaseParams({this.receiverId});

  @override
  Either<GoalOneAppError, bool> verify() {
    return Right(true);
  }
}
