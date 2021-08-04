import 'package:data/entity/remote/bookings/booking_info_list_entity.dart';
import 'package:domain/model/bookings/bookings_request_info.dart';
import 'package:domain/utils/mapper/base_layer_data_transformer.dart';
import 'package:json_annotation/json_annotation.dart';

part 'booking_list_response.g.dart';

@JsonSerializable()
class OrderListResponseEntity
    implements
        BaseLayerDataTransformer<OrderListResponseEntity, BookingsRequestInfo> {
  @JsonKey(name: 'data')
  BookingListInfoEntity data;

  OrderListResponseEntity({this.data});

  factory OrderListResponseEntity.fromJson(Map<String, dynamic> json) =>
      _$OrderListResponseEntityFromJson(json);

  Map<String, dynamic> toJson() => _$OrderListResponseEntityToJson(this);

  @override
  OrderListResponseEntity restore(BookingsRequestInfo data) {
    // TODO: implement restore
    throw UnimplementedError();
  }

  @override
  BookingsRequestInfo transform() {
    return data.transform();
  }
}
