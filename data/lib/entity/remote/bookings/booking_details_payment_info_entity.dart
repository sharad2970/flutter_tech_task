import 'package:data/entity/remote/bookings/player_entity.dart';
import 'package:domain/model/booking_details/booking_payment_details.dart';
import 'package:domain/utils/mapper/base_layer_data_transformer.dart';
import 'package:json_annotation/json_annotation.dart';

import 'booking_details_payment_order_info_entity.dart';

part 'booking_details_payment_info_entity.g.dart';

@JsonSerializable()
class BookingPaymentDetailsInfoEntity
    implements
        BaseLayerDataTransformer<BookingPaymentDetailsInfoEntity,
            OrderPaymentDetails> {
  @JsonKey(name: 'player')
  List<PlayerEntity> data;
  @JsonKey(name: "order_data")
  BookingDetailsPaymentOrderInfoEntity order;

  BookingPaymentDetailsInfoEntity();

  factory BookingPaymentDetailsInfoEntity.fromJson(Map<String, dynamic> json) =>
      _$BookingPaymentDetailsInfoEntityFromJson(json);

  Map<String, dynamic> toJson() =>
      _$BookingPaymentDetailsInfoEntityToJson(this);

  @override
  BookingPaymentDetailsInfoEntity restore(OrderPaymentDetails data) {
    throw UnimplementedError();
  }

  @override
  OrderPaymentDetails transform() {
    return OrderPaymentDetails(
      data: order.transform(),
      players: data.map((e) => e.transform()).toList(),
    );
  }
}
