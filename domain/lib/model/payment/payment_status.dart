class PaymentStatus {
  final String transactionId;
  String orderId;
  final bool isSuccess;
  double paidAmount;
  String paymentMethod;
  String paymentStatus;

  PaymentStatus(
      {this.transactionId,
      this.orderId,
      this.isSuccess,
      this.paidAmount,
      this.paymentMethod,
      this.paymentStatus});
}
