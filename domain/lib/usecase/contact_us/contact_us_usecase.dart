import 'package:dartz/dartz.dart';
import 'package:domain/constants/goal_one_errors.dart';
import 'package:domain/error/goal_one_error.dart';
import 'package:domain/error/network_error.dart';
import 'package:domain/model/base/error_info.dart';
import 'package:domain/repository/contact_us/contact_us_repository.dart';
import 'package:domain/usecase/base/base_usecase.dart';
import 'package:domain/usecase/base/params.dart';
import 'package:domain/utils/validator.dart';

class ContactUsUseCase
    extends BaseUseCase<NetworkError, ContactUsUseCaseParams, String> {
  ContactUsRepository _repository;

  ContactUsUseCase(this._repository);

  @override
  Future<Either<NetworkError, String>> execute(
      {ContactUsUseCaseParams params}) {
    return _repository.contactUsInfo(
        category: params.category, query: params.query);
  }
}

class ContactUsUseCaseParams extends Params {
  final String category;
  final String query;

  ContactUsUseCaseParams({this.category, this.query});

  @override
  Either<GoalOneAppError, bool> verify() {
    if (Validator.isEmpty(category)) {
      return Left(GoalOneAppError(
          type: ErrorType.EMPTY_CATEGORY,
          throwable: Exception(),
          error: ErrorInfo(message: '')));
    } else if (Validator.isEmpty(query)) {
      return Left(GoalOneAppError(
          type: ErrorType.EMPTY_QUERY,
          throwable: Exception(),
          error: ErrorInfo(message: '')));
    }
    return Right(true);
  }
}
