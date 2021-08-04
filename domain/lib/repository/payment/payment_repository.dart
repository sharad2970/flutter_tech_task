import 'package:dartz/dartz.dart';
import 'package:domain/error/base_error.dart';
import 'package:domain/model/payment/payment_status.dart';

/// Payment repository provider
abstract class PaymentRepository {
  Future<Either<BaseError, PaymentStatus>> makePayment(
      {String orderId, String totalAmount, String currency, String cardType});

  Future<Either<BaseError, String>> updatePaymentStatus({
    String orderId,
    String totalAmount,
    String paymentMethod,
    String transactionId,
    String paymentStatus,
    String isPendingPayment,
  });
}
