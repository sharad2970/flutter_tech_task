import 'package:dartz/dartz.dart';
import 'package:domain/constants/goal_one_errors.dart';
import 'package:domain/error/goal_one_error.dart';
import 'package:domain/error/network_error.dart';
import 'package:domain/model/base/error_info.dart';
import 'package:domain/model/payment/order_details.dart';
import 'package:domain/repository/pitchbooking/pitch_book_repository.dart';
import 'package:domain/usecase/base/base_usecase.dart';
import 'package:domain/usecase/base/params.dart';
import 'package:domain/utils/validator.dart';

class OrderDetailsUseCase
    extends BaseUseCase<NetworkError, OrderDetailsUseCaseParams, OrderDetails> {
  PitchBookRepository _pitchBookRepository;

  OrderDetailsUseCase(this._pitchBookRepository);

  @override
  Future<Either<NetworkError, OrderDetails>> execute(
      {OrderDetailsUseCaseParams params}) {
    return _pitchBookRepository.getOrderDetails(orderId: params.orderId);
  }
}

class OrderDetailsUseCaseParams extends Params {
  final String orderId;

  OrderDetailsUseCaseParams({this.orderId});

  @override
  Either<GoalOneAppError, bool> verify() {
    if (Validator.isEmpty(orderId)) {
      return Left(GoalOneAppError(
          type: ErrorType.EMPTY_ORDER_ID,
          throwable: Exception(),
          error: ErrorInfo(message: '')));
    }
    return Right(true);
  }
}
