import 'package:data/entity/remote/invite_buddies/player_id_entity.dart';
import 'package:json_annotation/json_annotation.dart';

part 'invite_knockout_buddies_request_entity.g.dart';

@JsonSerializable()
class InviteKnockoutBuddiesRequestEntity {
  @JsonKey(name: "team_id")
  final String teamId;
  @JsonKey(name: "players")
  final List<PlayerIdEntity> players;
  @JsonKey(name: "type")
  final String type;
  @JsonKey(name: "type_id")
  final String knockoutId;

  InviteKnockoutBuddiesRequestEntity(
      {this.teamId, this.type, this.knockoutId, this.players});

  factory InviteKnockoutBuddiesRequestEntity.fromJson(
          Map<String, dynamic> json) =>
      _$InviteKnockoutBuddiesRequestEntityFromJson(json);

  Map<String, dynamic> toJson() =>
      _$InviteKnockoutBuddiesRequestEntityToJson(this);
}
