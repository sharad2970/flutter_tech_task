import 'package:dartz/dartz.dart';
import 'package:domain/error/goal_one_error.dart';
import 'package:domain/error/network_error.dart';
import 'package:domain/model/knockout/knockout_list_info.dart';
import 'package:domain/repository/knockout/knockout_repository.dart';
import 'package:domain/usecase/base/base_usecase.dart';
import 'package:domain/usecase/base/params.dart';

class KnockoutUseCase
    extends BaseUseCase<NetworkError, KnockoutUseCaseParams, KnockoutListInfo> {
  KnockoutRepository _repository;

  KnockoutUseCase(this._repository);

  @override
  Future<Either<NetworkError,KnockoutListInfo>> execute(
      {KnockoutUseCaseParams params}) {
    return _repository.getKnockout(skip: params.skip, take: params.take);
  }
}

class KnockoutUseCaseParams extends Params {
  int skip;
  int take;

  KnockoutUseCaseParams({this.skip, this.take});

  @override
  Either<GoalOneAppError, bool> verify() {
    return Right(true);
  }
}
