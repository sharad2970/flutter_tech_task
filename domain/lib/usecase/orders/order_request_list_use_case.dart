import 'package:dartz/dartz.dart';
import 'package:domain/error/goal_one_error.dart';
import 'package:domain/error/network_error.dart';
import 'package:domain/model/bookings/bookings_request_info.dart';
import 'package:domain/repository/orders/order_repository.dart';
import 'package:domain/usecase/base/base_usecase.dart';
import 'package:domain/usecase/base/params.dart';

class OrderRequestListUseCase extends BaseUseCase<NetworkError,
    OrderRequestListUseCaseParams, BookingsRequestInfo> {
  OrderRepository _repository;

  OrderRequestListUseCase(this._repository);

  @override
  Future<Either<NetworkError, BookingsRequestInfo>> execute(
      {OrderRequestListUseCaseParams params}) {
    return _repository.getOrderRequestList(
        take: params.take, skip: params.skip, status: params.status);
  }
}

class OrderRequestListUseCaseParams extends Params {
  String status;
  int skip;
  int take;

  OrderRequestListUseCaseParams({this.status, this.skip, this.take});

  @override
  Either<GoalOneAppError, bool> verify() {
    return Right(true);
  }
}
