import 'package:dartz/dartz.dart';
import 'package:domain/constants/goal_one_errors.dart';
import 'package:domain/error/base_error.dart';
import 'package:domain/error/goal_one_error.dart';
import 'package:domain/model/base/error_info.dart';
import 'package:domain/model/user.dart';
import 'package:domain/repository/user/user_repository.dart';
import 'package:domain/usecase/base/base_usecase.dart';
import 'package:domain/usecase/base/params.dart';
import 'package:domain/utils/validator.dart';

/// login use case, validate and network call
class LoginUseCase extends BaseUseCase<BaseError, LoginUseCaseParams, User> {
  UserRepository _userRepository;

  LoginUseCase(this._userRepository);

  /// login user
  @override
  Future<Either<BaseError, User>> execute({LoginUseCaseParams params}) async {
    return Future.value(
      (await _userRepository.loginUser(
              email: params.emailAddress, password: params.password))
          .fold((l) => Left(l), (tokenUser) async {
        if (tokenUser.id != -1) {
          tokenUser.isLoggedIn = params.isLoggedIn;
          return _userRepository.saveUser(tokenUser);
        } else {
          return Right(tokenUser);
        }
      }),
    );
  }
}

class LoginUseCaseParams extends Params {
  final String emailAddress;
  final String password;
  final bool isLoggedIn;

  LoginUseCaseParams(
      {this.emailAddress, this.password, this.isLoggedIn: false});

  /// check error or validate details of [emailAddress] and [password]
  @override
  Either<GoalOneAppError, bool> verify() {
    if (Validator.isEmpty(emailAddress)) {
      return Left(GoalOneAppError(
          type: ErrorType.EMPTY_EMAIL,
          throwable: Exception(),
          error: ErrorInfo(message: '')));
    } else if (!Validator.validateEmail(emailAddress)) {
      return Left(GoalOneAppError(
          type: ErrorType.INVALID_EMAIL,
          throwable: Exception(),
          error: ErrorInfo(message: '')));
    } else if (Validator.isEmpty(password)) {
      return Left(GoalOneAppError(
          type: ErrorType.EMPTY_PASSWORD,
          throwable: Exception(),
          error: ErrorInfo(message: '')));
    }
    return Right(true);
  }
}
