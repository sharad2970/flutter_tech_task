import 'package:dartz/dartz.dart';
import 'package:domain/constants/goal_one_errors.dart';
import 'package:domain/error/base_error.dart';
import 'package:domain/error/goal_one_error.dart';
import 'package:domain/model/base/error_info.dart';
import 'package:domain/repository/payment/payment_repository.dart';
import 'package:domain/usecase/base/base_usecase.dart';
import 'package:domain/usecase/base/params.dart';
import 'package:domain/utils/validator.dart';

class PaymentStatusUpdateUseCase
    extends BaseUseCase<BaseError, PaymentStatusUpdateUseCaseParams, String> {
  PaymentRepository _paymentRepository;

  PaymentStatusUpdateUseCase(this._paymentRepository);

  @override
  Future<Either<BaseError, String>> execute(
      {PaymentStatusUpdateUseCaseParams params}) {
    return _paymentRepository.updatePaymentStatus(
        orderId: params.orderId,
        totalAmount: params.totalAmount,
        paymentMethod: params.paymentMethod,
        transactionId: params.transactionId,
        paymentStatus: params.paymentStatus,
        isPendingPayment: params.isPendingPayment);
  }
}

class PaymentStatusUpdateUseCaseParams extends Params {
  final String orderId;
  final String totalAmount;
  final String paymentMethod;
  final String transactionId;
  final String paymentStatus;
  final String isPendingPayment;

  PaymentStatusUpdateUseCaseParams({
    this.orderId,
    this.totalAmount,
    this.paymentMethod,
    this.transactionId,
    this.paymentStatus,
    this.isPendingPayment,
  });

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
    } else if (Validator.isEmpty(paymentMethod)) {
      return Left(GoalOneAppError(
          type: ErrorType.EMPTY_CARD_TYPE,
          throwable: Exception(),
          error: ErrorInfo(message: '')));
    } else if (Validator.isEmpty(transactionId)) {
      return Left(GoalOneAppError(
          type: ErrorType.EMPTY_TRANSACTION_ID,
          throwable: Exception(),
          error: ErrorInfo(message: '')));
    } else if (Validator.isEmpty(paymentMethod)) {
      return Left(GoalOneAppError(
          type: ErrorType.EMPTY_PAYMENTS_METHOD,
          throwable: Exception(),
          error: ErrorInfo(message: '')));
    } else if (Validator.isEmpty(paymentStatus)) {
      return Left(GoalOneAppError(
          type: ErrorType.EMPTY_PAYMENTS_STATUS,
          throwable: Exception(),
          error: ErrorInfo(message: '')));
    }

    return Right(true);
  }
}
