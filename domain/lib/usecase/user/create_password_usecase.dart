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

class CreatePasswordUseCase
    extends BaseUseCase<BaseError, CreatePasswordUseCaseParams, User> {
  UserRepository _userRepository;

  CreatePasswordUseCase(this._userRepository);

  @override
  Future<Either<BaseError, User>> execute(
      {CreatePasswordUseCaseParams params}) async {
    return Future.value((await _userRepository.registerUser(
            mobile: params.mobile,
            lastName: params.lastName,
            firstName: params.firstName,
            dob: params.dob,
            email: params.email,
            countryCode: params.countryCode,
            password: params.password,
            lang: params.lang))
        .fold((l) => Left(l), (tokenUser) async {
      if (tokenUser.id != -1) {
        return _userRepository.saveUser(tokenUser);
      } else {
        return Right(tokenUser);
      }
    }));
  }
}

class CreatePasswordUseCaseParams extends Params {
  final String firstName;
  final String lastName;
  final String email;
  final String mobile;
  final String dob;
  final String password;
  final String confirmPassword;
  final String lang;
  final String countryCode;

  CreatePasswordUseCaseParams(
      {this.firstName,
      this.lastName,
      this.email,
      this.mobile,
      this.dob,
      this.password,
      this.confirmPassword,
      this.countryCode,
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
    } else if (!Validator.isEqual(password, confirmPassword)) {
      return Left(GoalOneAppError(
          type: ErrorType.PASSWORD_NOT_MATCHED,
          throwable: Exception(),
          error: ErrorInfo(message: '')));
    }

    return Right(true);
  }
}
