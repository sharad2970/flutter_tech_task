import 'package:dartz/dartz.dart';
import 'package:domain/error/goal_one_error.dart';
import 'package:domain/error/network_error.dart';
import 'package:domain/model/buddy/accepted_buddy.dart';
import 'package:domain/repository/buddy/buddy_repository.dart';
import 'package:domain/usecase/base/base_usecase.dart';
import 'package:domain/usecase/base/params.dart';

class AcceptBuddyRequestUseCase extends BaseUseCase<NetworkError,
    AcceptBuddyRequestUseCaseParams, AcceptedBuddy> {
  BuddyRepository _repository;

  AcceptBuddyRequestUseCase(this._repository);

  @override
  Future<Either<NetworkError, AcceptedBuddy>> execute(
      {AcceptBuddyRequestUseCaseParams params}) {
    return _repository.acceptBuddyRequest(
        requestedId: params.requestedId, status: params.status);
  }
}

class AcceptBuddyRequestUseCaseParams extends Params {
  String requestedId;
  String status;

  AcceptBuddyRequestUseCaseParams({this.requestedId, this.status});

  @override
  Either<GoalOneAppError, bool> verify() {
    return Right(true);
  }
}
