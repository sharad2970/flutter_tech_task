import 'package:domain/utils/mapper/base_layer_data_transformer.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:domain/model/pitch_booking_multiple/update_pitch.dart';

part 'update_pitch_response_entity.g.dart';

@JsonSerializable()
class UpdatePitchResponseEntity
    implements BaseLayerDataTransformer<UpdatePitchResponseEntity, UpdatePitch> {
  @JsonKey(name: 'order_id')
  final int orderId;
  @JsonKey(name: 'sub_order_id')
  final int subOrderId;

  UpdatePitchResponseEntity({this.orderId,this.subOrderId});

  factory UpdatePitchResponseEntity.fromJson(Map<String, dynamic> json) =>
      _$UpdatePitchResponseEntityFromJson(json);

  Map<String, dynamic> toJson() => _$UpdatePitchResponseEntityToJson(this);

  @override
  UpdatePitchResponseEntity restore(data) {
    // TODO: implement restore
    throw UnimplementedError();
  }

  @override
  UpdatePitch transform() {
    return UpdatePitch(
      orderId: this.orderId != null ? '${this.orderId}' : '',
      subOrderId: this.subOrderId != null ? '${this.subOrderId}' : ''
    );
  }
}
