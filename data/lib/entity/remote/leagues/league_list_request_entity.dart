import 'package:json_annotation/json_annotation.dart';

part 'league_list_request_entity.g.dart';

@JsonSerializable()
class LeagueListRequestEntity {
  @JsonKey(name: "user_id")
  final String userId;
  @JsonKey(name: "skip")
  final String skip;
  @JsonKey(name: "take")
  final String take;

  LeagueListRequestEntity({this.userId, this.skip, this.take});

  factory LeagueListRequestEntity.fromJson(Map<String, dynamic> json) =>
      _$LeagueListRequestEntityFromJson(json);

  Map<String, dynamic> toJson() => _$LeagueListRequestEntityToJson(this);
}
