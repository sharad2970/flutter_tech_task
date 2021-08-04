import 'package:dartz/dartz.dart';
import 'package:domain/constants/goal_one_errors.dart';
import 'package:domain/error/goal_one_error.dart';
import 'package:domain/error/network_error.dart';
import 'package:domain/model/base/error_info.dart';
import 'package:domain/model/invitebuddies/player_id.dart';
import 'package:domain/model/knockout/knockout_invitation.dart';
import 'package:domain/repository/knockout/knockout_repository.dart';
import 'package:domain/usecase/base/base_usecase.dart';
import 'package:domain/usecase/base/params.dart';
import 'package:domain/utils/validator.dart';

class KnockoutInviteBuddiesUseCase extends BaseUseCase<NetworkError,
    KnockoutInviteBuddiesUseCaseParams, KnockoutInvitation> {
  KnockoutRepository _repository;

  KnockoutInviteBuddiesUseCase(this._repository);

  @override
  Future<Either<NetworkError, KnockoutInvitation>> execute(
      {KnockoutInviteBuddiesUseCaseParams params}) {
    return _repository.inviteKnockoutBuddies(
      teamId: params.teamId,
      type: params.type,
      knockoutId: params.knockoutId,
      buddiesList: params.buddiesList,
    );
  }
}

class KnockoutInviteBuddiesUseCaseParams extends Params {
  final String teamId;

  final String type;
  final String knockoutId;
  final List<PlayerId> buddiesList;

  KnockoutInviteBuddiesUseCaseParams(
      {this.teamId, this.type, this.knockoutId, this.buddiesList});

  @override
  Either<GoalOneAppError, bool> verify() {
    if (Validator.isEmpty(teamId)) {
      return Left(GoalOneAppError(
          type: ErrorType.EMPTY_TEAM_ID,
          throwable: Exception(),
          error: ErrorInfo(message: '')));
    }
    if (Validator.isEmpty(type)) {
      return Left(GoalOneAppError(
          type: ErrorType.TYPE,
          throwable: Exception(),
          error: ErrorInfo(message: '')));
    }
    if (Validator.isEmpty(knockoutId)) {
      return Left(GoalOneAppError(
          type: ErrorType.EMPTY_KNOCKOUT_ID,
          throwable: Exception(),
          error: ErrorInfo(message: '')));
    }
    if (buddiesList == null || buddiesList.isEmpty) {
      return Left(GoalOneAppError(
          type: ErrorType.EMPTY_BUDDY_LIST,
          throwable: Exception(),
          error: ErrorInfo(message: '')));
    }

    return Right(true);
  }
}
