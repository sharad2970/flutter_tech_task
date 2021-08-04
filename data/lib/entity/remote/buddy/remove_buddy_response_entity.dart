import 'package:domain/utils/mapper/base_layer_data_transformer.dart';
import 'package:json_annotation/json_annotation.dart';

part 'remove_buddy_response_entity.g.dart';

@JsonSerializable()
class RemoveBuddyResponseEntity
    implements BaseLayerDataTransformer<RemoveBuddyResponseEntity, String> {
  @JsonKey(name: 'message')
  String message;

  RemoveBuddyResponseEntity();

  factory RemoveBuddyResponseEntity.fromJson(Map<String, dynamic> json) =>
      _$RemoveBuddyResponseEntityFromJson(json);

  Map<String, dynamic> toJson() => _$RemoveBuddyResponseEntityToJson(this);

  @override
  RemoveBuddyResponseEntity restore(String data) {
    throw UnimplementedError();
  }

  @override
  String transform() {
    return this.message ?? '';
  }
}
