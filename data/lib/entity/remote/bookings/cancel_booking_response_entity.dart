import 'package:domain/utils/mapper/base_layer_data_transformer.dart';
import 'package:json_annotation/json_annotation.dart';

part 'cancel_booking_response_entity.g.dart';

@JsonSerializable()
class CancelOrderResponseEntity
    implements BaseLayerDataTransformer<CancelOrderResponseEntity, String> {
  @JsonKey(name: 'message')
  final String message;

  CancelOrderResponseEntity({
    this.message,
  });

  factory CancelOrderResponseEntity.fromJson(Map<String, dynamic> json) =>
      _$CancelOrderResponseEntityFromJson(json);

  Map<String, dynamic> toJson() => _$CancelOrderResponseEntityToJson(this);

  @override
  CancelOrderResponseEntity restore(String data) {
    // TODO: implement restore
    throw UnimplementedError();
  }

  @override
  String transform() {
    return this.message;
  }
}
