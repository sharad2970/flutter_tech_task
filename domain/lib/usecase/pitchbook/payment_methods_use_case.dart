import 'package:dartz/dartz.dart';
import 'package:domain/error/goal_one_error.dart';
import 'package:domain/error/network_error.dart';
import 'package:domain/model/payment/payment_methods.dart';
import 'package:domain/repository/pitchbooking/pitch_book_repository.dart';
import 'package:domain/usecase/base/base_usecase.dart';
import 'package:domain/usecase/base/params.dart';

class PaymentMethodsUseCase extends BaseUseCase<NetworkError,
    PaymentMethodsUseCaseParams, List<PaymentMethods>> {
  PitchBookRepository _pitchBookRepository;

  PaymentMethodsUseCase(this._pitchBookRepository);

  @override
  Future<Either<NetworkError, List<PaymentMethods>>> execute(
      {PaymentMethodsUseCaseParams params}) {
    return _pitchBookRepository.getPaymentMethods(
        splitShow: params.splitShow, orderId: params.orderId);
  }
}

class PaymentMethodsUseCaseParams extends Params {
  final bool splitShow;
  final String orderId;

  PaymentMethodsUseCaseParams({this.splitShow, this.orderId});

  @override
  Either<GoalOneAppError, bool> verify() {
    return Right(true);
  }
}
