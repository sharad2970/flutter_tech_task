import 'package:json_annotation/json_annotation.dart';

part 'rules_and_regulations_request.g.dart';

@JsonSerializable()
class RulesAndRegulationsRequest {
  @JsonKey(name: "league_id")
  final String leagueId;
  @JsonKey(name: "knockout_id")
  final String knockoutId;

  RulesAndRegulationsRequest({this.leagueId, this.knockoutId});

  factory RulesAndRegulationsRequest.fromJson(Map<String, dynamic> json) =>
      _$RulesAndRegulationsRequestFromJson(json);

  Map<String, dynamic> toJson() => _$RulesAndRegulationsRequestToJson(this);
}
