import 'package:dartz/dartz.dart';
import 'package:domain/constants/goal_one_errors.dart';
import 'package:domain/error/goal_one_error.dart';
import 'package:domain/error/network_error.dart';
import 'package:domain/model/base/error_info.dart';
import 'package:domain/model/user.dart';
import 'package:domain/repository/user/user_repository.dart';
import 'package:domain/usecase/base/base_usecase.dart';
import 'package:domain/usecase/base/params.dart';
import 'package:domain/utils/validator.dart';

/// Change Password use case
class ChangePasswordUseCase
    extends BaseUseCase<NetworkError, ChangePasswordUseCaseParams, User> {
  UserRepository _userRepository;

  ChangePasswordUseCase(this._userRepository);

  /// change password user
  @override
  Future<Either<NetworkError, User>> execute(
      {ChangePasswordUseCaseParams params}) {
    return _userRepository.changePassword(
        currentPassword: params.currentPassword,
        newPassword: params.newPassword,
        passwordConfirmation: params.passwordConfirmation);
  }
}

class ChangePasswordUseCaseParams extends Params {
  final String currentPassword;
  final String newPassword;
  final String passwordConfirmation;

  ChangePasswordUseCaseParams(
      {this.currentPassword, this.newPassword, this.passwordConfirmation});

  /// check error or validate details of [code]
  @override
  Either<GoalOneAppError, bool> verify() {
    if (Validator.isEmpty(newPassword)) {
      return Left(GoalOneAppError(
          type: ErrorType.EMPTY_PASSWORD,
          throwable: Exception(),
          error: ErrorInfo(message: '')));
    } else if (!Validator.isEqual(newPassword, passwordConfirmation)) {
      return Left(GoalOneAppError(
          type: ErrorType.PASSWORD_NOT_MATCHED,
          throwable: Exception(),
          error: ErrorInfo(message: '')));
    }
    return Right(true);
  }
}
