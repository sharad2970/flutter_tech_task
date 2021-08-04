import 'package:dartz/dartz.dart';
import 'package:domain/constants/goal_one_errors.dart';
import 'package:domain/error/base_error.dart';
import 'package:domain/error/goal_one_error.dart';
import 'package:domain/model/base/error_info.dart';
import 'package:domain/model/payment/payment_status.dart';
import 'package:domain/repository/payment/payment_repository.dart';
import 'package:domain/usecase/base/base_usecase.dart';
import 'package:domain/usecase/base/params.dart';
import 'package:domain/utils/validator.dart';

class PaymentUseCase
    extends BaseUseCase<BaseError, PaymentUseCaseParams, PaymentStatus> {
  PaymentRepository _paymentRepository;

  PaymentUseCase(this._paymentRepository);

  @override
  Future<Either<BaseError, PaymentStatus>> execute(
      {PaymentUseCaseParams params}) {
    return _paymentRepository.makePayment(
      orderId: params.orderId,
      totalAmount: params.totalAmount,
      currency: params.currency,
      cardType: params.cardType,
    );
  }
}

class PaymentUseCaseParams extends Params {
  final String orderId;
  final String totalAmount;
  final String currency;
  final String cardType;

  PaymentUseCaseParams(
      {this.orderId, this.totalAmount, this.currency, this.cardType});

  @override
  Either<GoalOneAppError, bool> verify() {
    if (Validator.isEmpty(orderId)) {
      return Left(GoalOneAppError(
          type: ErrorType.EMPTY_ORDER_ID,
          throwable: Exception(),
          error: ErrorInfo(message: '')));
    } else if (Validator.isEmpty(totalAmount)) {
      return Left(GoalOneAppError(
          type: ErrorType.EMPTY_TOTAL_AMOUNT,
          throwable: Exception(),
          error: ErrorInfo(message: '')));
    } else if (Validator.isEmpty(currency)) {
      return Left(GoalOneAppError(
          type: ErrorType.EMPTY_CURRENCY,
          throwable: Exception(),
          error: ErrorInfo(message: '')));
    } else if (Validator.isEmpty(cardType)) {
      return Left(GoalOneAppError(
          type: ErrorType.EMPTY_CARD_TYPE,
          throwable: Exception(),
          error: ErrorInfo(message: '')));
    }
    return Right(true);
  }
}
