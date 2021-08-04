import 'package:domain/utils/mapper/base_layer_data_transformer.dart';
import 'package:json_annotation/json_annotation.dart';

part 'reset_password_response.g.dart';

@JsonSerializable()
class ResetPasswordResponse
    implements BaseLayerDataTransformer<ResetPasswordResponse, String> {
  @JsonKey(name: "message")
  final String message;

  ResetPasswordResponse({this.message});

  factory ResetPasswordResponse.fromJson(Map<String, dynamic> json) {
    return _$ResetPasswordResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ResetPasswordResponseToJson(this);

  @override
  ResetPasswordResponse restore(String data) {
    return ResetPasswordResponse();
  }

  @override
  String transform() {
    return message;
  }
}
