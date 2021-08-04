import 'package:domain/model/bookings/order_info.dart';
import 'package:domain/utils/mapper/base_layer_data_transformer.dart';
import 'package:json_annotation/json_annotation.dart';

part 'order_info_entity.g.dart';

@JsonSerializable()
class OrderInfoEntity
    implements BaseLayerDataTransformer<OrderInfoEntity, OrderInfo> {
  @JsonKey(name: 'order_id')
  int orderId;
  @JsonKey(name: 'pitch_id')
  int pitchId;
  @JsonKey(name: 'date')
  String date;
  @JsonKey(name: 'start_time')
  String startTime;
  @JsonKey(name: 'end_time')
  String endTime;
  @JsonKey(name: 'sub_order_id')
  int subOrderId;

  OrderInfoEntity(
      {this.orderId, this.pitchId, this.date, this.startTime, this.endTime});

  factory OrderInfoEntity.fromJson(Map<String, dynamic> json) =>
      _$OrderInfoEntityFromJson(json);

  Map<String, dynamic> toJson() => _$OrderInfoEntityToJson(this);

  @override
  OrderInfoEntity restore(OrderInfo data) {
    // TODO: implement restore
    throw UnimplementedError();
  }

  @override
  OrderInfo transform() {
    return OrderInfo(
        subOrderId: subOrderId,
        orderId: orderId,
        pitchId: pitchId,
        date: date,
        startTime: startTime,
        endTime: endTime);
  }
}
