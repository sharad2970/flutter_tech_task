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

class UserProfileUseCase
    extends BaseUseCase<BaseError, UserProfileUseCaseParams, User> {
  UserRepository _userRepository;

  UserProfileUseCase(this._userRepository);

  /// login user
  @override
  Future<Either<BaseError, User>> execute(
      {UserProfileUseCaseParams params}) async {
    return Future.value(
      (await _userRepository.updateUserProfile(
        firstName: params.firstName,
        lastName: params.lastName,
        dob: params.dob,
        email: params.email,
        countryCode: params.countryCode,
        mobile: params.mobile,
      ))
          .fold((l) => Left(l), (tokenUser) async {
        if (tokenUser.id != -1) {
          return _userRepository.updateUser(tokenUser);
        } else {
          return Right(tokenUser);
        }
      }),
    );
  }
}

class UserProfileUseCaseParams extends Params {
  final String firstName;
  final String lastName;
  final String dob;
  final String mobile;
  final String email;
  final String countryCode;

  UserProfileUseCaseParams(
      {this.firstName,
      this.lastName,
      this.dob,
      this.mobile,
      this.email,
      this.countryCode});

  @override
  Either<GoalOneAppError, bool> verify() {
    if (Validator.isEmpty(email)) {
      return Left(GoalOneAppError(
          type: ErrorType.EMPTY_EMAIL,
          throwable: Exception(),
          error: ErrorInfo(message: '')));
    } else if (!Validator.validateEmail(email)) {
      return Left(GoalOneAppError(
          type: ErrorType.INVALID_EMAIL,
          throwable: Exception(),
          error: ErrorInfo(message: '')));
    }
    return Right(true);
  }
}
