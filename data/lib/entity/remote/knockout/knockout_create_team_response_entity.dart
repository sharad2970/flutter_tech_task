import 'package:domain/model/knockout/knockout_team.dart';
import 'package:domain/utils/mapper/base_layer_data_transformer.dart';
import 'package:json_annotation/json_annotation.dart';

part 'knockout_create_team_response_entity.g.dart';

@JsonSerializable()
class KnockoutCreateTeamResponseEntity
    implements
        BaseLayerDataTransformer<KnockoutCreateTeamResponseEntity,
            KnockoutTeam> {
  @JsonKey(name: 'teamId')
  final int teamId;

  KnockoutCreateTeamResponseEntity(this.teamId);

  factory KnockoutCreateTeamResponseEntity.fromJson(
          Map<String, dynamic> json) =>
      _$KnockoutCreateTeamResponseEntityFromJson(json);

  Map<String, dynamic> toJson() =>
      _$KnockoutCreateTeamResponseEntityToJson(this);

  @override
  KnockoutCreateTeamResponseEntity restore(data) {
    throw UnimplementedError();
  }

  @override
  KnockoutTeam transform() {
    return KnockoutTeam(
      teamId: this.teamId,
    );
  }
}
