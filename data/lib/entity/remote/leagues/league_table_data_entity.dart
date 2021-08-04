import 'package:domain/model/leagues/league_table.dart';
import 'package:domain/utils/mapper/base_layer_data_transformer.dart';
import 'package:json_annotation/json_annotation.dart';

part 'league_table_data_entity.g.dart';

@JsonSerializable()
class LeagueTableDataEntity
    implements BaseLayerDataTransformer<LeagueTableDataEntity, LeagueTable> {
  @JsonKey(name: 'team_name')
  final String teamName;
  @JsonKey(name: 'goals')
  final String goals;
  @JsonKey(name: 'wins')
  final int wins;
  @JsonKey(name: 'lost')
  final int lost;
  @JsonKey(name: 'draw')
  final int draw;
  @JsonKey(name: 'totalPlayed')
  final int totalPlayed;
  @JsonKey(name: 'points')
  final int points;
  @JsonKey(name: 'team_id')
  final int teamId;
  @JsonKey(name: 'goalsAgainst')
  final String goalsAgainst;

  LeagueTableDataEntity(
      {this.teamName,
      this.goals,
      this.wins: 0,
      this.lost: 0,
      this.draw: 0,
      this.totalPlayed: 0,
      this.points: 0,
      this.teamId: 0,
      this.goalsAgainst: '0'});

  factory LeagueTableDataEntity.fromJson(Map<String, dynamic> json) =>
      _$LeagueTableDataEntityFromJson(json);

  Map<String, dynamic> toJson() => _$LeagueTableDataEntityToJson(this);

  @override
  LeagueTableDataEntity restore(data) {
    throw UnimplementedError();
  }

  @override
  LeagueTable transform() {

    int goals = 0;
    int goalAgt = 0;
    if(this.goals != null && this.goals.isNotEmpty){
      goals = int.tryParse(this.goals);
    }
    if(this.goalsAgainst != null && this.goalsAgainst.isNotEmpty){
      goalAgt = int.tryParse(this.goalsAgainst);
    }

    return LeagueTable(
      teamId: this.teamId,
      teamName: this.teamName,
      points: this.points == null ? 0 : this.points,
      won: this.wins == null ? 0 : this.wins,
      lost: this.lost == null ? 0 : this.lost,
      draw: this.draw == null ? 0 : this.draw,
      gd: (goals - goalAgt),
      matchPlayed: this.totalPlayed == null ? 0 : this.totalPlayed,
      isExpanded: false,
    );
  }
}
