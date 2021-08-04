import 'package:domain/utils/mapper/base_layer_data_transformer.dart';
import 'package:json_annotation/json_annotation.dart';

part 'payment_status_response.g.dart';

@JsonSerializable()
class PaymentStatusUpdateResponse
    implements BaseLayerDataTransformer<PaymentStatusUpdateResponse, String> {
  @JsonKey(name: 'message')
  final String message;

  PaymentStatusUpdateResponse({
    this.message,
  });

  factory PaymentStatusUpdateResponse.fromJson(Map<String, dynamic> json) =>
      _$PaymentStatusUpdateResponseFromJson(json);

  Map<String, dynamic> toJson() => _$PaymentStatusUpdateResponseToJson(this);

  @override
  PaymentStatusUpdateResponse restore(String data) {
    // TODO: implement restore
    throw UnimplementedError();
  }

  @override
  String transform() {
    return this.message;
  }
}
