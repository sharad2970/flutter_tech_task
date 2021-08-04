import 'package:dartz/dartz.dart';
import 'package:domain/error/goal_one_error.dart';
import 'package:domain/error/network_error.dart';
import 'package:domain/model/staticPage/faq_page_info.dart';
import 'package:domain/repository/staticPage/faq_page_repository.dart';
import 'package:domain/usecase/base/base_usecase.dart';
import 'package:domain/usecase/base/params.dart';

class FaqPageUseCase
    extends BaseUseCase<NetworkError, FaqPageUseCaseParams, List<Faqs>> {
  FaqPageRepository _repository;

  FaqPageUseCase(this._repository);

  @override
  Future<Either<NetworkError, List<Faqs>>> execute(
      {FaqPageUseCaseParams params}) {
    return _repository.getFaqPageInfo(params.language);
  }
}

class FaqPageUseCaseParams extends Params {
  String language;

  FaqPageUseCaseParams({this.language});

  @override
  Either<GoalOneAppError, bool> verify() {
    return Right(true);
  }
}
