import 'package:domain/utils/mapper/base_layer_data_transformer.dart';
import 'package:json_annotation/json_annotation.dart';

part 'forgot_password_response.g.dart';

@JsonSerializable()
class ForgotPasswordResponse
    implements BaseLayerDataTransformer<ForgotPasswordResponse, String> {
  @JsonKey(name: "message")
  final String message;

  ForgotPasswordResponse({this.message});

  factory ForgotPasswordResponse.fromJson(Map<String, dynamic> json) {
    return _$ForgotPasswordResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ForgotPasswordResponseToJson(this);

  @override
  ForgotPasswordResponse restore(String data) {
    return ForgotPasswordResponse();
  }

  @override
  String transform() {
    return message;
  }
}
