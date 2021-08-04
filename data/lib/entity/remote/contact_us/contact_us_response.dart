import 'package:domain/utils/mapper/base_layer_data_transformer.dart';
import 'package:json_annotation/json_annotation.dart';

part 'contact_us_response.g.dart';

@JsonSerializable()
class ContactUsResponse implements BaseLayerDataTransformer<ContactUsResponse,String>{
  @JsonKey(name: "message")
  final String message;

  ContactUsResponse({this.message});

  factory ContactUsResponse.fromJson(Map<String, dynamic> json) {
    return _$ContactUsResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ContactUsResponseToJson(this);

  @override
  ContactUsResponse restore(String data) {
    return ContactUsResponse();
  }

  @override
  String transform() {
    return this.message ?? '';
  }


}