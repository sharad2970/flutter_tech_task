import 'package:domain/model/booking_details/booking_pending_amount.dart';
import 'package:domain/utils/mapper/base_layer_data_transformer.dart';
import 'package:json_annotation/json_annotation.dart';

import 'booking_order_pending_payment_info_entity.dart';

part 'booking_pending_payments_entity.g.dart';

@JsonSerializable()
class OrderDetailPendingPaymentsResponseEntity
    implements
        BaseLayerDataTransformer<OrderDetailPendingPaymentsResponseEntity,
            BookingPendingAmount> {
  @JsonKey(name: 'data')
  BookingOrderPendingPaymentInfoEntity data;

  OrderDetailPendingPaymentsResponseEntity();

  factory OrderDetailPendingPaymentsResponseEntity.fromJson(
          Map<String, dynamic> json) =>
      _$OrderDetailPendingPaymentsResponseEntityFromJson(json);

  Map<String, dynamic> toJson() =>
      _$OrderDetailPendingPaymentsResponseEntityToJson(this);

  @override
  OrderDetailPendingPaymentsResponseEntity restore(BookingPendingAmount data) {
    throw UnimplementedError();
  }

  @override
  BookingPendingAmount transform() {
    return data.transform();
  }
}
