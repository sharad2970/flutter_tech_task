import 'package:dartz/dartz.dart';
import 'package:domain/error/database_error.dart';
import 'package:domain/error/goal_one_error.dart';
import 'package:domain/model/user.dart';
import 'package:domain/repository/user/user_repository.dart';
import 'package:domain/usecase/base/base_usecase.dart';
import 'package:domain/usecase/base/params.dart';

class ListenCurrentUserUseCase extends BaseUseCase<DatabaseError,
    ListenCurrentUserUseCaseParams, Stream<User>> {
  final UserRepository _userRepository;

  ListenCurrentUserUseCase(this._userRepository);

  @override
  Future<Either<DatabaseError, Stream<User>>> execute(
      {ListenCurrentUserUseCaseParams params}) async {
    return _userRepository.listenCurrentUser();
  }
}

class ListenCurrentUserUseCaseParams extends Params {
  ListenCurrentUserUseCaseParams();

  @override
  Either<GoalOneAppError, bool> verify() {
    return Right(true);
  }
}
