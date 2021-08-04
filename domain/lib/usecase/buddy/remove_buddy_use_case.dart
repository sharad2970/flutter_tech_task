import 'package:dartz/dartz.dart';
import 'package:domain/error/goal_one_error.dart';
import 'package:domain/error/network_error.dart';
import 'package:domain/repository/buddy/buddy_repository.dart';
import 'package:domain/usecase/base/base_usecase.dart';
import 'package:domain/usecase/base/params.dart';

class RemoveBuddyUseCase
    extends BaseUseCase<NetworkError, RemoveBuddyUseCaseParams, String> {
  BuddyRepository _repository;

  RemoveBuddyUseCase(this._repository);

  @override
  Future<Either<NetworkError, String>> execute(
      {RemoveBuddyUseCaseParams params}) {
    return _repository.removeBuddy(requestedId: params.requestedId);
  }
}

class RemoveBuddyUseCaseParams extends Params {
  String requestedId;

  RemoveBuddyUseCaseParams({this.requestedId});

  @override
  Either<GoalOneAppError, bool> verify() {
    return Right(true);
  }
}
