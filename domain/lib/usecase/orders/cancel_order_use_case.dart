import 'package:dartz/dartz.dart';
import 'package:domain/error/goal_one_error.dart';
import 'package:domain/error/network_error.dart';
import 'package:domain/repository/orders/order_repository.dart';
import 'package:domain/usecase/base/base_usecase.dart';
import 'package:domain/usecase/base/params.dart';

class CancelOrderRequestUseCase
    extends BaseUseCase<NetworkError, CancelOrderUseCaseParams, String> {
  OrderRepository _repository;

  CancelOrderRequestUseCase(this._repository);

  @override
  Future<Either<NetworkError, String>> execute(
      {CancelOrderUseCaseParams params}) {
    return _repository.cancelOrder(orderId: params.orderId);
  }
}

class CancelOrderUseCaseParams extends Params {
  String orderId;

  CancelOrderUseCaseParams({this.orderId});

  @override
  Either<GoalOneAppError, bool> verify() {
    return Right(true);
  }
}
