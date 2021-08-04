import 'package:domain/constants/payment/goalone_payment_status.dart';
import 'package:domain/model/payment/order_details.dart';
import 'package:domain/utils/mapper/base_layer_data_transformer.dart';
import 'package:json_annotation/json_annotation.dart';

part 'order_details_entity.g.dart';

@JsonSerializable()
class OrderDetailsEntity
    implements BaseLayerDataTransformer<OrderDetailsEntity, OrderDetails> {
  @JsonKey(name: 'id')
  final int id;
  @JsonKey(name: 'player_id')
  final int playerId;
  @JsonKey(name: 'total_amt')
  final String totalAmt;
  @JsonKey(name: 'paid_amt')
  final String paidAmt;
  @JsonKey(name: 'transaction_id')
  final dynamic transactionId;
  @JsonKey(name: 'payment_method')
  final String paymentMethod;
  @JsonKey(name: 'payment_status')
  final String paymentStatus;
  @JsonKey(name: 'order_status')
  final String orderStatus;
  @JsonKey(name: 'refund_status')
  final int refundStatus;
  @JsonKey(name: 'created_at')
  final String createdAt;
  @JsonKey(name: 'updated_at')
  final String updatedAt;
  @JsonKey(name: 'currency')
  final String currency;
  @JsonKey(name: 'isBookingSessionExpired')
  final bool isBookingSessionExpired;

  OrderDetailsEntity(
      {this.id,
      this.playerId,
      this.totalAmt,
      this.paidAmt,
      this.transactionId,
      this.paymentMethod: "",
      this.paymentStatus,
      this.orderStatus,
      this.refundStatus,
      this.createdAt,
      this.updatedAt,
      this.currency,
      this.isBookingSessionExpired});

  factory OrderDetailsEntity.fromJson(Map<String, dynamic> json) =>
      _$OrderDetailsEntityFromJson(json);

  Map<String, dynamic> toJson() => _$OrderDetailsEntityToJson(this);

  @override
  OrderDetailsEntity restore(OrderDetails data) {
    // TODO: implement restore
    throw UnimplementedError();
  }

  @override
  OrderDetails transform() {
    return OrderDetails(
        id: this.id,
        playerId: this.playerId,
        totalAmt: this.totalAmt,
        paidAmt: this.paidAmt,
        transactionId: this.transactionId == null ? '' : this.transactionId,
        paymentMethod: this.paymentMethod == null ? '' : this.paymentMethod,
        paymentStatus: this.paymentStatus,
        orderStatus: this.orderStatus,
        refundStatus: this.refundStatus,
        createdAt: this.createdAt,
        updatedAt: this.updatedAt,
        currency: this.currency == null
            ? GoalOnePaymentStatus.CURRENCY_OMR
            : this.currency,
        isBookingSessionExpired: this.isBookingSessionExpired != null
            ? this.isBookingSessionExpired
            : false);
  }
}
