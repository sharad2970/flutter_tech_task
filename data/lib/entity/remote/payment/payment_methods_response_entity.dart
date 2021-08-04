import 'package:domain/model/payment/payment_methods.dart';
import 'package:domain/utils/mapper/base_layer_data_transformer.dart';
import 'package:json_annotation/json_annotation.dart';

part 'payment_methods_response_entity.g.dart';

@JsonSerializable()
class PaymentMethodResponseEntity
    implements
        BaseLayerDataTransformer<PaymentMethodResponseEntity, PaymentMethods> {
  @JsonKey(name: "name")
  final String name;
  @JsonKey(name: "value")
  final String value;

  PaymentMethodResponseEntity({this.name, this.value});

  factory PaymentMethodResponseEntity.fromJson(Map<String, dynamic> json) =>
      _$PaymentMethodResponseEntityFromJson(json);

  Map<String, dynamic> toJson() => _$PaymentMethodResponseEntityToJson(this);

  @override
  PaymentMethodResponseEntity restore(PaymentMethods data) {
    // TODO: implement restore
    throw UnimplementedError();
  }

  @override
  PaymentMethods transform() {
    return PaymentMethods(
      name: this.name,
      value: this.value,
    );
  }
}
