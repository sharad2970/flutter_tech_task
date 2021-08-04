import 'package:data/entity/remote/leagues/player_id_request_entity.dart';
import 'package:json_annotation/json_annotation.dart';

part 'create_league_team_request_entity.g.dart';

@JsonSerializable()
class CreateLeagueTeamRequestEntity {
  @JsonKey(name: "type_id")
  final String typeId;
  @JsonKey(name: "team_id")
  final String teamId;
  @JsonKey(name: "type")
  final String type;
  @JsonKey(name: "players")
  final List<PlayerIdRequestEntity> playerIds;

  CreateLeagueTeamRequestEntity(
      {this.typeId, this.teamId, this.type, this.playerIds});

  factory CreateLeagueTeamRequestEntity.fromJson(Map<String, dynamic> json) =>
      _$CreateLeagueTeamRequestEntityFromJson(json);

  Map<String, dynamic> toJson() => _$CreateLeagueTeamRequestEntityToJson(this);
}
