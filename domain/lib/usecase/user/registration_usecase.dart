import 'package:dartz/dartz.dart';
import 'package:domain/constants/goal_one_errors.dart';
import 'package:domain/error/goal_one_error.dart';
import 'package:domain/error/network_error.dart';
import 'package:domain/model/base/error_info.dart';
import 'package:domain/repository/user/user_repository.dart';
import 'package:domain/usecase/base/base_usecase.dart';
import 'package:domain/usecase/base/params.dart';
import 'package:domain/utils/validator.dart';

class RegistrationUseCase
    extends BaseUseCase<NetworkError, RegistrationUseCaseParams, String> {
  UserRepository _userRepository;

  RegistrationUseCase(this._userRepository);

  @override
  Future<Either<NetworkError, String>> execute({params}) {
    // TODO: implement execute
    throw UnimplementedError();
  }
}

class RegistrationUseCaseParams extends Params {
  final String firstName;
  final String lastName;
  final String email;
  final String mobile;
  final String dob;
  final String password;
  final String lang;

  RegistrationUseCaseParams(
      {this.firstName,
      this.lastName,
      this.email,
      this.mobile,
      this.dob,
      this.password,
      this.lang});

  @override
  Either<GoalOneAppError, bool> verify() {
    if (Validator.isEmpty(firstName)) {
      return Left(GoalOneAppError(
          type: ErrorType.EMPTY_FIRST_NAME,
          throwable: Exception(),
          error: ErrorInfo(message: '')));
    } else if (Validator.isEmpty(lastName)) {
      return Left(GoalOneAppError(
          type: ErrorType.EMPTY_LAST_NAME,
          throwable: Exception(),
          error: ErrorInfo(message: '')));
    } else if (Validator.isEmpty(email)) {
      return Left(GoalOneAppError(
          type: ErrorType.EMPTY_EMAIL,
          throwable: Exception(),
          error: ErrorInfo(message: '')));
    } else if (!Validator.validateEmail(email)) {
      return Left(GoalOneAppError(
          type: ErrorType.INVALID_EMAIL,
          throwable: Exception(),
          error: ErrorInfo(message: '')));
    } else if (Validator.isEmpty(mobile)) {
      return Left(GoalOneAppError(
          type: ErrorType.EMPTY_PHONE,
          throwable: Exception(),
          error: ErrorInfo(message: '')));
    } else if (Validator.isEmpty(dob)) {
      return Left(GoalOneAppError(
          type: ErrorType.EMPTY_DOB,
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
