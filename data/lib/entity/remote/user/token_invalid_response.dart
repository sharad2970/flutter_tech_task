import 'package:domain/utils/mapper/base_layer_data_transformer.dart';
import 'package:json_annotation/json_annotation.dart';

part 'token_invalid_response.g.dart';

@JsonSerializable()
class TokenInvalidResponse
    implements BaseLayerDataTransformer<TokenInvalidResponse, String> {
  @JsonKey(name: "message")
  final String message;

  TokenInvalidResponse({this.message});

  factory TokenInvalidResponse.fromJson(Map<String, dynamic> json) {
    return _$TokenInvalidResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$TokenInvalidResponseToJson(this);

  @override
  TokenInvalidResponse restore(String data) {
    return TokenInvalidResponse();
  }

  @override
  String transform() {
    return message ?? '';
  }
}
