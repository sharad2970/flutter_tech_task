import 'package:data/entity/remote/buddy/player_entity.dart';
import 'package:domain/model/buddy/player.dart';
import 'package:domain/utils/mapper/base_layer_data_transformer.dart';
import 'package:json_annotation/json_annotation.dart';

part 'add_buddy_response_entity.g.dart';

@JsonSerializable()
class AddBuddyResponseEntity
    implements BaseLayerDataTransformer<AddBuddyResponseEntity, Player> {
  @JsonKey(name: 'data')
  PlayerEntity data;

  AddBuddyResponseEntity();

  factory AddBuddyResponseEntity.fromJson(Map<String, dynamic> json) =>
      _$AddBuddyResponseEntityFromJson(json);

  Map<String, dynamic> toJson() => _$AddBuddyResponseEntityToJson(this);

  @override
  Player transform() {
    return data.transform();
  }

  @override
  AddBuddyResponseEntity restore(Player data) {
    throw UnimplementedError();
  }
}
