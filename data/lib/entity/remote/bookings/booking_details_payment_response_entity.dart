import 'package:domain/model/booking_details/booking_payment_details.dart';
import 'package:domain/utils/mapper/base_layer_data_transformer.dart';
import 'package:json_annotation/json_annotation.dart';

import 'booking_details_payment_info_entity.dart';

part 'booking_details_payment_response_entity.g.dart';

@JsonSerializable()
class OrderDetailPaymentsResponseEntity
    implements
        BaseLayerDataTransformer<OrderDetailPaymentsResponseEntity,
            OrderPaymentDetails> {
  @JsonKey(name: 'data')
  BookingPaymentDetailsInfoEntity data;

  OrderDetailPaymentsResponseEntity({this.data});

  factory OrderDetailPaymentsResponseEntity.fromJson(
          Map<String, dynamic> json) =>
      _$OrderDetailPaymentsResponseEntityFromJson(json);

  Map<String, dynamic> toJson() =>
      _$OrderDetailPaymentsResponseEntityToJson(this);

  @override
  OrderDetailPaymentsResponseEntity restore(OrderPaymentDetails data) {
    throw UnimplementedError();
  }

  @override
  OrderPaymentDetails transform() {
    return data.transform();
  }
}
