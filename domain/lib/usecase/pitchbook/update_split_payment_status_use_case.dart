import 'package:dartz/dartz.dart';
import 'package:domain/constants/goal_one_errors.dart';
import 'package:domain/error/goal_one_error.dart';
import 'package:domain/error/network_error.dart';
import 'package:domain/model/base/error_info.dart';
import 'package:domain/model/payment/update_payment_status.dart';
import 'package:domain/repository/pitchbooking/pitch_book_repository.dart';
import 'package:domain/usecase/base/base_usecase.dart';
import 'package:domain/usecase/base/params.dart';
import 'package:domain/utils/validator.dart';

class UpdateSplitPaymentStatusUseCase extends BaseUseCase<NetworkError,
    UpdateSplitPaymentStatusUseCaseParams, UpdatePaymentStatus> {
  PitchBookRepository _pitchBookRepository;

  UpdateSplitPaymentStatusUseCase(this._pitchBookRepository);

  @override
  Future<Either<NetworkError, UpdatePaymentStatus>> execute(
      {UpdateSplitPaymentStatusUseCaseParams params}) {
    return _pitchBookRepository.updateSplitPaymentStatus(
        orderId: params.orderId, paymentMethod: params.paymentMethod);
  }
}

class UpdateSplitPaymentStatusUseCaseParams extends Params {
  final String orderId;
  final String paymentMethod;

  UpdateSplitPaymentStatusUseCaseParams({this.orderId, this.paymentMethod});

  @override
  Either<GoalOneAppError, bool> verify() {
    if (Validator.isEmpty(orderId)) {
      return Left(GoalOneAppError(
          type: ErrorType.EMPTY_ORDER_ID,
          throwable: Exception(),
          error: ErrorInfo(message: '')));
    } else if (Validator.isEmpty(paymentMethod)) {
      return Left(GoalOneAppError(
          type: ErrorType.EMPTY_PAYMENT_METHOD,
          throwable: Exception(),
          error: ErrorInfo(message: '')));
    }
    return Right(true);
  }
}
