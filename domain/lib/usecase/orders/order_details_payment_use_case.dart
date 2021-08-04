import 'package:dartz/dartz.dart';
import 'package:domain/error/goal_one_error.dart';
import 'package:domain/error/network_error.dart';
import 'package:domain/model/booking_details/booking_payment_details.dart';
import 'package:domain/repository/orders/order_repository.dart';
import 'package:domain/usecase/base/base_usecase.dart';
import 'package:domain/usecase/base/params.dart';

class OrderPaymentDetailsUseCase extends BaseUseCase<NetworkError,
    OrderDetailsPaymentUseCaseParams, OrderPaymentDetails> {
  OrderRepository _repository;

  OrderPaymentDetailsUseCase(this._repository);

  @override
  Future<Either<NetworkError, OrderPaymentDetails>> execute(
      {OrderDetailsPaymentUseCaseParams params}) {
    return _repository.getOrderDetailsPayments(
        orderId: params.orderId, type: params.type);
  }
}

class OrderDetailsPaymentUseCaseParams extends Params {
  String orderId;
  String type;

  OrderDetailsPaymentUseCaseParams({this.orderId, this.type});

  @override
  Either<GoalOneAppError, bool> verify() {
    return Right(true);
  }
}
