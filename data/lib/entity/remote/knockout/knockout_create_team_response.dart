import 'package:data/entity/remote/knockout/knockout_create_team_response_entity.dart';
import 'package:domain/model/knockout/knockout_team.dart';
import 'package:domain/utils/mapper/base_layer_data_transformer.dart';
import 'package:json_annotation/json_annotation.dart';

part 'knockout_create_team_response.g.dart';

@JsonSerializable()
class KnockoutTeamCreateResponse
    implements
        BaseLayerDataTransformer<KnockoutTeamCreateResponse, KnockoutTeam> {
  @JsonKey(name: 'data')
  KnockoutCreateTeamResponseEntity data;

  KnockoutTeamCreateResponse({this.data});

  factory KnockoutTeamCreateResponse.fromJson(Map<String, dynamic> json) =>
      _$KnockoutTeamCreateResponseFromJson(json);

  Map<String, dynamic> toJson() => _$KnockoutTeamCreateResponseToJson(this);

  @override
  KnockoutTeamCreateResponse restore(data) {
    throw UnimplementedError();
  }

  @override
  KnockoutTeam transform() {
    return KnockoutTeam(
      teamId: data.teamId,
    );
  }
}
