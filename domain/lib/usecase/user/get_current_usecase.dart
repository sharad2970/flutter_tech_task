import 'package:dartz/dartz.dart';
import 'package:domain/error/database_error.dart';
import 'package:domain/error/goal_one_error.dart';
import 'package:domain/model/user.dart';
import 'package:domain/repository/user/user_repository.dart';
import 'package:domain/usecase/base/base_usecase.dart';
import 'package:domain/usecase/base/params.dart';

class GetCurrentUserUseCase
    extends BaseUseCase<DatabaseError, GetCurrentUserUseCaseParams, User> {
  final UserRepository _userRepository;

  GetCurrentUserUseCase(this._userRepository);

  @override
  Future<Either<DatabaseError, User>> execute(
      {GetCurrentUserUseCaseParams params}) async {
    return _userRepository.getCurrentUser();
  }
}

class GetCurrentUserUseCaseParams extends Params {
  GetCurrentUserUseCaseParams();

  @override
  Either<GoalOneAppError, bool> verify() {
    return Right(true);
  }
}
