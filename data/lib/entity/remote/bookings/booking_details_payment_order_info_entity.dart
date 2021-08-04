import 'package:domain/model/booking_details/booking_payment_details.dart';
import 'package:domain/utils/mapper/base_layer_data_transformer.dart';
import 'package:json_annotation/json_annotation.dart';

part 'booking_details_payment_order_info_entity.g.dart';

@JsonSerializable()
class BookingDetailsPaymentOrderInfoEntity
    implements
        BaseLayerDataTransformer<BookingDetailsPaymentOrderInfoEntity,
            OrderData> {
  @JsonKey(name: 'date')
  String date;
  @JsonKey(name: 'time')
  String time;
  @JsonKey(name: 'order_id')
  int orderId;
  @JsonKey(name: 'payment_status')
  String paymentStatus;
  @JsonKey(name: "pay_balance")
  bool canPayBalance;
  @JsonKey(name: "payment_method")
  String paymentMethod;
  @JsonKey(name: "total_amount")
  String totalAmount;
  @JsonKey(name: "amount_paid")
  String totalAmountPaid;
  @JsonKey(name: "currency")
  String currency;

  BookingDetailsPaymentOrderInfoEntity();

  factory BookingDetailsPaymentOrderInfoEntity.fromJson(
          Map<String, dynamic> json) =>
      _$BookingDetailsPaymentOrderInfoEntityFromJson(json);

  Map<String, dynamic> toJson() =>
      _$BookingDetailsPaymentOrderInfoEntityToJson(this);

  @override
  BookingDetailsPaymentOrderInfoEntity restore(OrderData data) {
    throw UnimplementedError();
  }

  @override
  OrderData transform() {
    return OrderData(
        date: date,
        time: time,
        orderId: orderId,
        paymentStatus: paymentStatus,
        canPayBalance: canPayBalance,
        totalAmount:
            this.totalAmount == null ? 0.0 : double.tryParse(this.totalAmount),
        totalAmountPaid: this.totalAmountPaid == null
            ? 0.0
            : double.tryParse(this.totalAmountPaid),
        currency: this.currency);
  }
}
