import 'package:data/entity/remote/leagues/team_player_response_entity.dart';
import 'package:domain/model/leagues/league_teams.dart';
import 'package:domain/utils/mapper/base_layer_data_transformer.dart';
import 'package:json_annotation/json_annotation.dart';

part 'league_teams_response_entity.g.dart';

@JsonSerializable()
class LeagueTeamsResponseEntity
    implements
        BaseLayerDataTransformer<LeagueTeamsResponseEntity, LeagueTeams> {
  @JsonKey(name: 'id')
  final int id;
  @JsonKey(name: 'team_name')
  final String teamName;
  @JsonKey(name: 'team_no')
  final int teamNumber;
  @JsonKey(name: 'captain_id')
  final int captainId;
  @JsonKey(name: 'status')
  final int status;
  @JsonKey(name: 'created_at')
  final String createdAt;
  @JsonKey(name: 'updated_at')
  final String updatedAt;
  @JsonKey(name: 'captain')
  final bool isCaptain;
  @JsonKey(name: 'payment_status')
  final String paymentStatus;
  @JsonKey(name: 'payment_method')
  final String paymentMethod;
  @JsonKey(name: 'TeamMember')
  final bool isTeamMember;

  // @JsonKey(name: 'players')
  @JsonKey(name: 'teamplayer')
  final List<TeamPlayerResponseEntity> teamPlayerList;

  LeagueTeamsResponseEntity(
      this.id,
      this.teamName,
      this.teamNumber,
      this.captainId,
      this.status,
      this.createdAt,
      this.updatedAt,
      this.isCaptain,
      this.paymentStatus,
      this.paymentMethod,
      this.isTeamMember,
      this.teamPlayerList);

  factory LeagueTeamsResponseEntity.fromJson(Map<String, dynamic> json) =>
      _$LeagueTeamsResponseEntityFromJson(json);

  Map<String, dynamic> toJson() => _$LeagueTeamsResponseEntityToJson(this);

  @override
  LeagueTeamsResponseEntity restore(data) {
    throw UnimplementedError();
  }

  @override
  LeagueTeams transform() {
    return LeagueTeams(
        id: this.id,
        teamName: this.teamName,
        teamNumber: this.teamNumber,
        captainId: this.captainId,
        status: this.status,
        createdAt: this.createdAt,
        updatedAt: this.updatedAt,
        isCaptain: this.isCaptain,
        paymentStatus: this.paymentStatus == null ? '' : this.paymentStatus,
        paymentMethod: this.paymentMethod == null ? '' : this.paymentMethod,
        isTeamMember: this.isTeamMember == null ? false : this.isTeamMember,
        teamPlayer: this.teamPlayerList.map((e) => e.transform()).toList());
  }
}
