import 'package:dartz/dartz.dart';
import 'package:domain/error/goal_one_error.dart';
import 'package:domain/error/network_error.dart';
import 'package:domain/repository/buddy/buddy_repository.dart';
import 'package:domain/usecase/base/base_usecase.dart';
import 'package:domain/usecase/base/params.dart';

class InviteContactUseCase
    extends BaseUseCase<NetworkError, InviteContactUseCaseParams, String> {
  BuddyRepository _repository;

  InviteContactUseCase(this._repository);

  @override
  Future<Either<NetworkError, String>> execute(
      {InviteContactUseCaseParams params}) {
    return _repository.inviteContact(mobNo: params.mobNo);
  }
}

class InviteContactUseCaseParams extends Params {
  String mobNo;

  InviteContactUseCaseParams({this.mobNo});

  @override
  Either<GoalOneAppError, bool> verify() {
    return Right(true);
  }
}
