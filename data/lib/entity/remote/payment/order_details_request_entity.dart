import 'package:json_annotation/json_annotation.dart';

part 'order_details_request_entity.g.dart';

@JsonSerializable()
class OrderDetailsRequestEntity {
  @JsonKey(name: "order_id")
  final String orderId;

  OrderDetailsRequestEntity({
    this.orderId,
  });

  factory OrderDetailsRequestEntity.fromJson(Map<String, dynamic> json) =>
      _$OrderDetailsRequestEntityFromJson(json);

  Map<String, dynamic> toJson() => _$OrderDetailsRequestEntityToJson(this);
}
