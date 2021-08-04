import 'package:dartz/dartz.dart';
import 'package:domain/error/goal_one_error.dart';
import 'package:domain/error/network_error.dart';
import 'package:domain/repository/user/user_repository.dart';
import 'package:domain/usecase/base/base_usecase.dart';
import 'package:domain/usecase/base/params.dart';

class TokenInvalidUseCase extends BaseUseCase<NetworkError,
    TokenInvalidUseCaseParams,String>{
  final UserRepository _userRepository;

  TokenInvalidUseCase(this._userRepository);

  @override
  Future<Either<NetworkError, String>> execute({TokenInvalidUseCaseParams params}) {
    return _userRepository.tokenInvalid();
  }
}

class TokenInvalidUseCaseParams extends Params{
  TokenInvalidUseCaseParams();

  @override
  Either<GoalOneAppError, bool> verify() {
    return Right(true);
  }
}

