import 'package:domain/model/booking_details/booking_details_request_info.dart';
import 'package:domain/utils/mapper/base_layer_data_transformer.dart';
import 'package:json_annotation/json_annotation.dart';

import 'booking_details_order_info_entity.dart';

part 'booking_details_response_entity.g.dart';

@JsonSerializable()
class OrderDetailsResponseEntity
    implements
        BaseLayerDataTransformer<OrderDetailsResponseEntity,
            BookingDetailsRequestInfo> {
  @JsonKey(name: 'data')
  BookingDetailsInfoEntity data;

  OrderDetailsResponseEntity({this.data});

  factory OrderDetailsResponseEntity.fromJson(Map<String, dynamic> json) =>
      _$OrderDetailsResponseEntityFromJson(json);

  Map<String, dynamic> toJson() => _$OrderDetailsResponseEntityToJson(this);

  @override
  OrderDetailsResponseEntity restore(BookingDetailsRequestInfo data) {
    throw UnimplementedError();
  }

  @override
  BookingDetailsRequestInfo transform() {
    return data.transform();
  }
}
