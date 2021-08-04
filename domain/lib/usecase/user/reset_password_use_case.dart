import 'package:dartz/dartz.dart';
import 'package:domain/constants/goal_one_errors.dart';
import 'package:domain/error/base_error.dart';
import 'package:domain/error/goal_one_error.dart';
import 'package:domain/model/base/error_info.dart';
import 'package:domain/repository/user/user_repository.dart';
import 'package:domain/usecase/base/base_usecase.dart';
import 'package:domain/usecase/base/params.dart';
import 'package:domain/utils/validator.dart';

/// Reset Password use case
class ResetPasswordUseCase
    extends BaseUseCase<BaseError, ResetPasswordUseCaseParams, String> {
  UserRepository _userRepository;

  ResetPasswordUseCase(this._userRepository);

  /// login user
  @override
  Future<Either<BaseError, String>> execute(
      {ResetPasswordUseCaseParams params}) {
    return _userRepository.resetPassword(
        requestedId: params.requestedId,
        password: params.password,
        passwordConfirmation: params.passwordConfirmation);
  }
}

class ResetPasswordUseCaseParams extends Params {
  final String requestedId;
  final String password;
  final String passwordConfirmation;

  ResetPasswordUseCaseParams(
      {this.requestedId, this.password, this.passwordConfirmation});

  /// check error or validate details of [code]
  @override
  Either<GoalOneAppError, bool> verify() {
    if (Validator.isEmpty(password)) {
      return Left(GoalOneAppError(
          type: ErrorType.EMPTY_PASSWORD,
          throwable: Exception(),
          error: ErrorInfo(message: '')));
    } else if (!Validator.isEqual(password, passwordConfirmation)) {
      return Left(GoalOneAppError(
          type: ErrorType.PASSWORD_NOT_MATCHED,
          throwable: Exception(),
          error: ErrorInfo(message: '')));
    }
    return Right(true);
  }
}
