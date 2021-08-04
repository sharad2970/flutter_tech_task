import 'package:dartz/dartz.dart';
import 'package:domain/error/goal_one_error.dart';
import 'package:domain/error/network_error.dart';
import 'package:domain/model/knockout/knockout_details.dart';
import 'package:domain/repository/knockout_details/knockout_details_repository.dart';
import 'package:domain/usecase/base/base_usecase.dart';
import 'package:domain/usecase/base/params.dart';

class KnockoutDetailUseCase extends BaseUseCase<NetworkError,
    KnockoutDetailUseCaseParams, List<KnockoutDetails>> {
  KnockoutDetailRepository _repository;

  KnockoutDetailUseCase(this._repository);

  @override
  Future<Either<NetworkError, List<KnockoutDetails>>> execute(
      {KnockoutDetailUseCaseParams params}) {
    return _repository.getKnockoutDetail(knockoutId: params.knockoutId);
  }
}

class KnockoutDetailUseCaseParams extends Params {
  String knockoutId;

  KnockoutDetailUseCaseParams({this.knockoutId});

  @override
  Either<GoalOneAppError, bool> verify() {
    return Right(true);
  }
}
