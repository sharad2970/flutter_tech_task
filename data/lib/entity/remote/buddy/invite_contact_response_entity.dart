import 'package:domain/utils/mapper/base_layer_data_transformer.dart';
import 'package:json_annotation/json_annotation.dart';

part 'invite_contact_response_entity.g.dart';

@JsonSerializable()
class InviteContactResponseEntity
    implements BaseLayerDataTransformer<InviteContactResponseEntity, String> {
  @JsonKey(name: 'message')
  String message;

  InviteContactResponseEntity();

  factory InviteContactResponseEntity.fromJson(Map<String, dynamic> json) =>
      _$InviteContactResponseEntityFromJson(json);

  Map<String, dynamic> toJson() => _$InviteContactResponseEntityToJson(this);

  @override
  InviteContactResponseEntity restore(String data) {
    throw UnimplementedError();
  }

  @override
  String transform() {
    return message;
  }
}
