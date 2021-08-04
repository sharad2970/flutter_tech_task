import 'package:dartz/dartz.dart';
import 'package:domain/constants/goal_one_errors.dart';
import 'package:domain/error/goal_one_error.dart';
import 'package:domain/error/network_error.dart';
import 'package:domain/model/base/error_info.dart';
import 'package:domain/model/knockout/knockout_team.dart';
import 'package:domain/repository/knockout/knockout_repository.dart';
import 'package:domain/usecase/base/base_usecase.dart';
import 'package:domain/usecase/base/params.dart';
import 'package:domain/utils/validator.dart';

class KnockoutCreateTeamUseCase extends BaseUseCase<NetworkError,
    KnockoutCreateTeamUseCaseParams, KnockoutTeam> {
  KnockoutRepository _repository;

  KnockoutCreateTeamUseCase(this._repository);

  @override
  Future<Either<NetworkError, KnockoutTeam>> execute(
      {KnockoutCreateTeamUseCaseParams params}) {
    return _repository.createKnockoutTeam(
      knockoutId: params.knockoutId,
      teamName: params.teamName,
    );
  }
}

class KnockoutCreateTeamUseCaseParams extends Params {
  final String knockoutId;
  final String teamName;

  KnockoutCreateTeamUseCaseParams({this.knockoutId, this.teamName});

  @override
  Either<GoalOneAppError, bool> verify() {
    if (Validator.isEmpty(knockoutId)) {
      return Left(GoalOneAppError(
          type: ErrorType.EMPTY_KNOCKOUT_ID,
          throwable: Exception(),
          error: ErrorInfo(message: '')));
    }
    if (Validator.isEmpty(teamName)) {
      return Left(GoalOneAppError(
          type: ErrorType.EMPTY_TEAM_NAME,
          throwable: Exception(),
          error: ErrorInfo(message: '')));
    }

    return Right(true);
  }
}
