import 'package:domain/model/buddy/player.dart';
import 'package:domain/utils/mapper/base_layer_data_transformer.dart';
import 'package:json_annotation/json_annotation.dart';

part 'player_entity.g.dart';

@JsonSerializable()
class PlayerEntity implements BaseLayerDataTransformer<PlayerEntity, Player> {
  @JsonKey(name: 'id')
  int id;
  @JsonKey(name: 'first_name')
  String firstName;
  @JsonKey(name: 'last_name')
  String lastName;
  @JsonKey(name: 'avatar')
  String avatar;
  @JsonKey(name: 'isRequested')
  bool isRequested;
  @JsonKey(name: 'requestedId')
  String requestedId;
  @JsonKey(name: "requestedDateTime")
  String requestedDateTime;

  PlayerEntity();

  factory PlayerEntity.fromJson(Map<String, dynamic> json) =>
      _$PlayerEntityFromJson(json);

  Map<String, dynamic> toJson() => _$PlayerEntityToJson(this);

  @override
  PlayerEntity restore(Player data) {
    throw UnimplementedError();
  }

  @override
  Player transform() {
    return Player(
        id: id,
        firstName: firstName,
        lastName: lastName,
        avatar: avatar,
        isRequested: isRequested,
        requestedId: requestedId,
        requestedDateTime: requestedDateTime);
  }
}
