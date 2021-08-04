import 'package:data/entity/remote/leagues/create_league_team_response_entity.dart';
import 'package:domain/model/leagues/create_league_team.dart';
import 'package:domain/utils/mapper/base_layer_data_transformer.dart';
import 'package:json_annotation/json_annotation.dart';

part 'create_league_team_response.g.dart';

@JsonSerializable()
class CreateLeagueTeamResponse
    implements
        BaseLayerDataTransformer<CreateLeagueTeamResponse, CreateLeagueTeam> {
  @JsonKey(name: 'message')
  final String message;
  @JsonKey(name: 'data')
  final CreateLeagueTeamResponseEntity data;

  CreateLeagueTeamResponse({this.message, this.data});

  factory CreateLeagueTeamResponse.fromJson(Map<String, dynamic> json) =>
      _$CreateLeagueTeamResponseFromJson(json);

  Map<String, dynamic> toJson() => _$CreateLeagueTeamResponseToJson(this);

  @override
  CreateLeagueTeamResponse restore(data) {
    throw UnimplementedError();
  }

  @override
  CreateLeagueTeam transform() {
    return CreateLeagueTeam(
        orderId: this.data.transform() != null
            ? int.tryParse(this.data.transform())
            : null,
        message: this.message);
  }
}
