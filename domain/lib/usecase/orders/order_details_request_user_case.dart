import 'package:dartz/dartz.dart';
import 'package:domain/error/goal_one_error.dart';
import 'package:domain/error/network_error.dart';
import 'package:domain/model/booking_details/booking_details_request_info.dart';
import 'package:domain/repository/orders/order_repository.dart';
import 'package:domain/usecase/base/base_usecase.dart';
import 'package:domain/usecase/base/params.dart';

class OrderRequestDetailsUseCase extends BaseUseCase<NetworkError,
    OrderDetailsUseCaseParams, BookingDetailsRequestInfo> {
  OrderRepository _repository;

  OrderRequestDetailsUseCase(this._repository);

  @override
  Future<Either<NetworkError, BookingDetailsRequestInfo>> execute(
      {OrderDetailsUseCaseParams params}) {
    return _repository.getOrderDetails(
        pitchId: params.pitchId,
        orderId: params.orderId,
        subOrderId: int.tryParse(params.subOrderId));
  }
}

class OrderDetailsUseCaseParams extends Params {
  String orderId;
  String pitchId;
  String subOrderId;

  OrderDetailsUseCaseParams({this.orderId, this.pitchId, this.subOrderId});

  @override
  Either<GoalOneAppError, bool> verify() {
    return Right(true);
  }
}
