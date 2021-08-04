import 'package:json_annotation/json_annotation.dart';

part 'league_table_request_entity.g.dart';

@JsonSerializable()
class LeagueTableRequestEntity {
  @JsonKey(name: "league_id")
  final String leagueId;

  LeagueTableRequestEntity({this.leagueId});

  factory LeagueTableRequestEntity.fromJson(Map<String, dynamic> json) =>
      _$LeagueTableRequestEntityFromJson(json);

  Map<String, dynamic> toJson() => _$LeagueTableRequestEntityToJson(this);
}
