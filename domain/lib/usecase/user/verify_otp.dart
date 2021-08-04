import 'package:dartz/dartz.dart';
import 'package:domain/constants/goal_one_errors.dart';
import 'package:domain/error/base_error.dart';
import 'package:domain/error/goal_one_error.dart';
import 'package:domain/model/base/error_info.dart';
import 'package:domain/model/user/verify_otp.dart';
import 'package:domain/repository/user/user_repository.dart';
import 'package:domain/usecase/base/base_usecase.dart';
import 'package:domain/usecase/base/params.dart';
import 'package:domain/utils/validator.dart';

/// verify otp use case
class VerifyOtpUseCase
    extends BaseUseCase<BaseError, VerifyOtpUseCaseParams, VerifyOtp> {
  UserRepository _userRepository;

  VerifyOtpUseCase(this._userRepository);

  @override
  Future<Either<BaseError, VerifyOtp>> execute(
      {VerifyOtpUseCaseParams params}) {
    return _userRepository.verifyOtp(code: params.code);
  }
}

class VerifyOtpUseCaseParams extends Params {
  final String code;

  VerifyOtpUseCaseParams({this.code});

  /// check error or validate details of [code]
  @override
  Either<GoalOneAppError, bool> verify() {
    if (Validator.isEmpty(code)) {
      return Left(GoalOneAppError(
          type: ErrorType.EMPTY_EMAIL,
          throwable: Exception(),
          error: ErrorInfo(message: '')));
    }
    return Right(true);
  }
}
