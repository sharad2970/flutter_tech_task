import 'package:json_annotation/json_annotation.dart';

part 'payment_status_request_entity.g.dart';

@JsonSerializable()
class PaymentStatusRequestEntity {
  @JsonKey(name: "order_id")
  final String orderId;
  @JsonKey(name: "player_id")
  final String playerId;
  @JsonKey(name: "paid_amt")
  final String paidAmount;
  @JsonKey(name: "payment_method")
  final String paymentMethod;
  @JsonKey(name: "transaction_id")
  final String transactionId;
  @JsonKey(name: "payment_status")
  final String paymentStatus;
  @JsonKey(name: "is_pending_payment")
  final String isPendingPayment;

  PaymentStatusRequestEntity(
      {this.orderId,
      this.playerId,
      this.paidAmount,
      this.paymentMethod,
      this.transactionId,
      this.paymentStatus,
      this.isPendingPayment});

  factory PaymentStatusRequestEntity.fromJson(Map<String, dynamic> json) =>
      _$PaymentStatusRequestEntityFromJson(json);

  Map<String, dynamic> toJson() => _$PaymentStatusRequestEntityToJson(this);
}
