import 'package:json_annotation/json_annotation.dart';

part 'league_teams_request.g.dart';

@JsonSerializable()
class LeagueTeamsRequest {
  @JsonKey(name: "league_id")
  final String leagueId;

  LeagueTeamsRequest({this.leagueId});

  factory LeagueTeamsRequest.fromJson(Map<String, dynamic> json) =>
      _$LeagueTeamsRequestFromJson(json);

  Map<String, dynamic> toJson() => _$LeagueTeamsRequestToJson(this);
}
