import 'package:dartz/dartz.dart';
import 'package:domain/error/goal_one_error.dart';
import 'package:domain/error/network_error.dart';
import 'package:domain/model/booking_details/booking_pending_amount.dart';
import 'package:domain/repository/orders/order_repository.dart';
import 'package:domain/usecase/base/base_usecase.dart';
import 'package:domain/usecase/base/params.dart';

class OrderDetailsPendingPaymentUseCase extends BaseUseCase<NetworkError,
    OrderDetailsPendingAmountUseCaseParams, BookingPendingAmount> {
  OrderRepository _repository;

  OrderDetailsPendingPaymentUseCase(this._repository);

  @override
  Future<Either<NetworkError, BookingPendingAmount>> execute(
      {OrderDetailsPendingAmountUseCaseParams params}) {
    return _repository.getPendingAmount(orderId: params.orderId);
  }
}

class OrderDetailsPendingAmountUseCaseParams extends Params {
  String orderId;

  OrderDetailsPendingAmountUseCaseParams({this.orderId});

  @override
  Either<GoalOneAppError, bool> verify() {
    return Right(true);
  }
}
