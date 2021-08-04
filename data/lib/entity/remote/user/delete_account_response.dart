import 'package:domain/utils/mapper/base_layer_data_transformer.dart';
import 'package:json_annotation/json_annotation.dart';

part 'delete_account_response.g.dart';

@JsonSerializable()
class DeleteAccountResponse
    implements BaseLayerDataTransformer<DeleteAccountResponse, String> {
  @JsonKey(name: "message")
  final String message;

  DeleteAccountResponse({this.message});

  factory DeleteAccountResponse.fromJson(Map<String, dynamic> json) {
    return _$DeleteAccountResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$DeleteAccountResponseToJson(this);

  @override
  DeleteAccountResponse restore(String data) {
    return DeleteAccountResponse();
  }

  @override
  String transform() {
    return message;
  }
}
