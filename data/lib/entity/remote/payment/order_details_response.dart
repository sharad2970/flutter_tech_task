import 'package:data/entity/remote/payment/order_details_entity.dart';
import 'package:domain/utils/mapper/base_layer_data_transformer.dart';
import 'package:json_annotation/json_annotation.dart';

part 'order_details_response.g.dart';

@JsonSerializable()
class OrderDetailsResponse
    implements
        BaseLayerDataTransformer<OrderDetailsResponse, OrderDetailsEntity> {
  @JsonKey(name: 'data')
  final OrderDetailsEntity data;

  OrderDetailsResponse({this.data});

  factory OrderDetailsResponse.fromJson(Map<String, dynamic> json) =>
      _$OrderDetailsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$OrderDetailsResponseToJson(this);

  @override
  OrderDetailsResponse restore(OrderDetailsEntity data) {
    // TODO: implement restore
    throw UnimplementedError();
  }

  @override
  OrderDetailsEntity transform() {
    return OrderDetailsEntity(
        id: this.data.id,
        playerId: this.data.playerId,
        totalAmt: this.data.totalAmt,
        paidAmt: this.data.paidAmt,
        transactionId: this.data.transactionId,
        paymentMethod: this.data.paymentMethod,
        paymentStatus: this.data.paymentStatus,
        orderStatus: this.data.orderStatus,
        refundStatus: this.data.refundStatus,
        createdAt: this.data.createdAt,
        updatedAt: this.data.updatedAt);
  }
}
