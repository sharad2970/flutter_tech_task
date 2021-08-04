import 'package:dartz/dartz.dart';
import 'package:domain/constants/goal_one_errors.dart';
import 'package:domain/error/goal_one_error.dart';
import 'package:domain/error/network_error.dart';
import 'package:domain/model/base/error_info.dart';
import 'package:domain/repository/user/user_repository.dart';
import 'package:domain/usecase/base/base_usecase.dart';
import 'package:domain/usecase/base/params.dart';
import 'package:domain/utils/validator.dart';

/// use case for [ForgotPassPage]
class ForgotPassUseCase
    extends BaseUseCase<NetworkError, ForgotPassUseCaseParams, String> {
  UserRepository _userRepository;

  ForgotPassUseCase(this._userRepository);

  /// api call
  @override
  Future<Either<NetworkError, String>> execute(
      {ForgotPassUseCaseParams params}) {
    return _userRepository.forgotPassword(
        email: params.email, countryCode: params.countryCode);
  }
}

/// validate the information
class ForgotPassUseCaseParams extends Params {
  final String email;
  final String countryCode;

  ForgotPassUseCaseParams({this.email, this.countryCode});

  @override
  Either<GoalOneAppError, bool> verify() {
    if (Validator.isEmpty(email)) {
      return Left(GoalOneAppError(
          type: ErrorType.EMPTY_EMAIL,
          throwable: Exception(),
          error: ErrorInfo(message: '')));
    }
    // else if (!Validator.validateEmail(email)){
    //   return Left(GoalOneAppError(
    //       type: ErrorType.INVALID_EMAIL,
    //       throwable: Exception(),
    //       error: ErrorInfo(message: '')));
    // }

    return Right(true);
  }
}
