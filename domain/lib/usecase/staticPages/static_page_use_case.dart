import 'package:dartz/dartz.dart';
import 'package:domain/constants/enum/static_page_enum.dart';
import 'package:domain/error/goal_one_error.dart';
import 'package:domain/error/network_error.dart';
import 'package:domain/model/staticPage/static_page_info.dart';
import 'package:domain/repository/staticPage/static_page_repository.dart';
import 'package:domain/usecase/base/base_usecase.dart';
import 'package:domain/usecase/base/params.dart';

class StaticPageUseCase
    extends BaseUseCase<NetworkError, StaticPageUseCaseParams, StaticPageInfo> {
  StaticPageRepository _repository;

  StaticPageUseCase(this._repository);

  @override
  Future<Either<NetworkError, StaticPageInfo>> execute(
      {StaticPageUseCaseParams params}) {
    return _repository.getStaticPageInfo(params.staticPageEnum);
  }
}

class StaticPageUseCaseParams extends Params {
  StaticPageEnum staticPageEnum;

  StaticPageUseCaseParams({this.staticPageEnum});

  @override
  Either<GoalOneAppError, bool> verify() {
    return Right(true);
  }
}