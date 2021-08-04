import 'package:data/entity/remote/leagues/league_teams_response_entity.dart';
import 'package:domain/model/leagues/league_teams.dart';
import 'package:domain/utils/mapper/base_layer_data_transformer.dart';
import 'package:json_annotation/json_annotation.dart';

part 'league_teams_response.g.dart';

@JsonSerializable()
class LeagueTeamsResponse
    implements
        BaseLayerDataTransformer<LeagueTeamsResponse, List<LeagueTeams>> {
  @JsonKey(name: 'data')
  List<LeagueTeamsResponseEntity> data;

  LeagueTeamsResponse({this.data});

  factory LeagueTeamsResponse.fromJson(Map<String, dynamic> json) =>
      _$LeagueTeamsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$LeagueTeamsResponseToJson(this);

  @override
  LeagueTeamsResponse restore(data) {
    throw UnimplementedError();
  }

  @override
  List<LeagueTeams> transform() {
    return this.data.map((e) => e.transform()).toList();
  }
}
