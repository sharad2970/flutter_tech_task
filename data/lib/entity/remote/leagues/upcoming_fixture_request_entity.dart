import 'package:json_annotation/json_annotation.dart';

part 'upcoming_fixture_request_entity.g.dart';

@JsonSerializable()
class UpcomingFixturesRequestEntity {
  @JsonKey(name: "league_id")
  final String leagueId;

  UpcomingFixturesRequestEntity({this.leagueId});

  factory UpcomingFixturesRequestEntity.fromJson(Map<String, dynamic> json) =>
      _$UpcomingFixturesRequestEntityFromJson(json);

  Map<String, dynamic> toJson() => _$UpcomingFixturesRequestEntityToJson(this);
}
