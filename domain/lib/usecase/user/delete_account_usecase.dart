import 'package:dartz/dartz.dart';
import 'package:domain/error/base_error.dart';
import 'package:domain/error/goal_one_error.dart';
import 'package:domain/repository/user/user_repository.dart';
import 'package:domain/usecase/base/base_usecase.dart';
import 'package:domain/usecase/base/params.dart';

/// delete account use case, validate and network call
class DeleteAccountUseCase
    extends BaseUseCase<BaseError, DeleteUseCaseParams, String> {
  UserRepository _userRepository;

  DeleteAccountUseCase(this._userRepository);

  @override
  Future<Either<BaseError, String>> execute({DeleteUseCaseParams params}) {
    return _userRepository.deleteUser();
  }
}

class DeleteUseCaseParams extends Params {
  @override
  Either<GoalOneAppError, bool> verify() {
    return Right(true);
  }
}
