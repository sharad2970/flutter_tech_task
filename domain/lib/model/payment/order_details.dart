import 'package:domain/constants/payment/goalone_payment_status.dart';

class OrderDetails {
  final int id;
  final int playerId;
  final String totalAmt;
  final String paidAmt;
  final dynamic transactionId;
  final String paymentMethod;
  final String paymentStatus;
  final String orderStatus;
  final int refundStatus;
  final String createdAt;
  final String updatedAt;
  final String currency;
  final bool isBookingSessionExpired;

  OrderDetails(
      {this.id: -1,
      this.playerId: -1,
      this.totalAmt: '',
      this.paidAmt: '',
      this.transactionId: '',
      this.paymentMethod: '',
      this.paymentStatus: '',
      this.orderStatus: '',
      this.refundStatus: -1,
      this.createdAt: '',
      this.updatedAt: '',
      this.currency: GoalOnePaymentStatus.CURRENCY_OMR,
      this.isBookingSessionExpired: false});
}
