import 'package:json_annotation/json_annotation.dart';

part 'pending_payment_status_request_entity.g.dart';

@JsonSerializable()
class PendingPaymentStatusRequestEntity {
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
  @JsonKey(name: "paid_for_id")
  final List<int> paidForIds;

  PendingPaymentStatusRequestEntity(
      {this.orderId,
      this.playerId,
      this.paidAmount,
      this.paymentMethod,
      this.transactionId,
      this.paymentStatus,
      this.paidForIds});

  factory PendingPaymentStatusRequestEntity.fromJson(
          Map<String, dynamic> json) =>
      _$PendingPaymentStatusRequestEntityFromJson(json);

  Map<String, dynamic> toJson() =>
      _$PendingPaymentStatusRequestEntityToJson(this);
}
