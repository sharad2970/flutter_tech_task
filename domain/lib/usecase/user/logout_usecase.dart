import 'package:dartz/dartz.dart';
import 'package:domain/error/base_error.dart';
import 'package:domain/error/database_error.dart';
import 'package:domain/error/goal_one_error.dart';
import 'package:domain/repository/user/user_repository.dart';
import 'package:domain/usecase/base/base_usecase.dart';
import 'package:domain/usecase/base/params.dart';

/// logout use case, validate and network call
class LogoutUseCase extends BaseUseCase<BaseError, LogoutUseCaseParams, bool> {
  UserRepository _userRepository;

  LogoutUseCase(this._userRepository);

  /// logout user
  @override
  Future<Either<DatabaseError, bool>> execute(
      {LogoutUseCaseParams params}) async {
    return _userRepository.logoutUser();
  }
}

class LogoutUseCaseParams extends Params {
  @override
  Either<GoalOneAppError, bool> verify() {
    return Right(true);
  }
}
