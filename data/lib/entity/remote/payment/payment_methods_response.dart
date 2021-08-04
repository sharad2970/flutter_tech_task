import 'package:data/entity/remote/payment/payment_methods_response_entity.dart';
import 'package:domain/model/payment/payment_methods.dart';
import 'package:domain/utils/mapper/base_layer_data_transformer.dart';
import 'package:json_annotation/json_annotation.dart';

part 'payment_methods_response.g.dart';

@JsonSerializable()
class PaymentMethodsResponse
    implements
        BaseLayerDataTransformer<PaymentMethodsResponse, List<PaymentMethods>> {
  @JsonKey(name: 'data')
  final List<PaymentMethodResponseEntity> data;

  PaymentMethodsResponse({this.data});

  factory PaymentMethodsResponse.fromJson(Map<String, dynamic> json) =>
      _$PaymentMethodsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$PaymentMethodsResponseToJson(this);

  @override
  PaymentMethodsResponse restore(List<PaymentMethods> data) {
    // TODO: implement restore
    throw UnimplementedError();
  }

  @override
  List<PaymentMethods> transform() {
    return data.map((e) => e.transform()).toList();
  }
}
