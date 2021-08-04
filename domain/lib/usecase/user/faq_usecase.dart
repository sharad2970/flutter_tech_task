import 'package:dartz/dartz.dart';
import 'package:domain/error/base_error.dart';
import 'package:domain/error/database_error.dart';
import 'package:domain/error/goal_one_error.dart';
import 'package:domain/repository/user/user_repository.dart';
import 'package:domain/usecase/base/base_usecase.dart';
import 'package:domain/usecase/base/params.dart';

class FAQUseCase extends BaseUseCase<BaseError, FAQCaseParams, bool> {
  UserRepository _userRepository;

  FAQUseCase(this._userRepository);

  @override
  Future<Either<DatabaseError, bool>> execute({FAQCaseParams params}) async {
    return _userRepository.faqUser();
  }
}

class FAQCaseParams extends Params {
  @override
  Either<GoalOneAppError, bool> verify() {
    return Right(true);
  }
}
