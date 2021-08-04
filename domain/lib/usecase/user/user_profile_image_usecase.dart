
import 'package:dartz/dartz.dart';
import 'package:domain/error/base_error.dart';
import 'package:domain/error/goal_one_error.dart';
import 'package:domain/model/user.dart';
import 'package:domain/repository/user/user_repository.dart';
import 'package:domain/usecase/base/base_usecase.dart';
import 'package:domain/usecase/base/params.dart';

class UserProfileImageUseCase
    extends BaseUseCase<BaseError, UserProfileImageUseCaseParams, User> {
  UserRepository _userRepository;

  UserProfileImageUseCase(this._userRepository);

  /// remove  user profile image
  @override
  Future<Either<BaseError, User>> execute(
      {UserProfileImageUseCaseParams params}) async {
    return Future.value(
      (await _userRepository.removeUserImage()).fold((l) => Left(l),
          (tokenUser) async {
        if (tokenUser.id != -1) {
          // this is where we update the user data
          return _userRepository.updateUser(tokenUser);

          //return _userRepository.updateUser(tokenUser);
        } else {
          return Right(tokenUser);
        }
      }),
    );
  }
}

class UserProfileImageUseCaseParams extends Params {
  UserProfileImageUseCaseParams();

  @override
  Either<GoalOneAppError, bool> verify() {
    return Right(true);
  }
}
