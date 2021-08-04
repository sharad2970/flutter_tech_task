import 'package:dartz/dartz.dart';
import 'package:domain/error/base_error.dart';
import 'package:domain/error/goal_one_error.dart';
import 'package:domain/error/network_error.dart';
import 'package:domain/model/discount/discount_info.dart';
import 'package:domain/repository/discount/discount_repository.dart';
import 'package:domain/usecase/base/base_usecase.dart';
import 'package:domain/usecase/base/params.dart';

class DiscountUseCase
    extends BaseUseCase<BaseError, DiscountUseCaseParams, DiscountInfo> {
  DiscountRepository _discountRepository;

  DiscountUseCase(this._discountRepository);

  @override
  Future<Either<NetworkError, DiscountInfo>> execute(
      {DiscountUseCaseParams params}) {
    return _discountRepository.getDiscounts(params.lang);
  }
}

class DiscountUseCaseParams extends Params {
  String lang;

  DiscountUseCaseParams({this.lang});

  @override
  Either<GoalOneAppError, bool> verify() {
    return Right(true);
  }
}
