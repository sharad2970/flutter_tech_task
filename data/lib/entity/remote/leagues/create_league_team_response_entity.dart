import 'package:domain/utils/mapper/base_layer_data_transformer.dart';
import 'package:json_annotation/json_annotation.dart';

part 'create_league_team_response_entity.g.dart';

@JsonSerializable()
class CreateLeagueTeamResponseEntity
    implements
        BaseLayerDataTransformer<CreateLeagueTeamResponseEntity, String> {
  @JsonKey(name: 'order_id')
  final int orderId;

  CreateLeagueTeamResponseEntity({this.orderId});

  factory CreateLeagueTeamResponseEntity.fromJson(Map<String, dynamic> json) =>
      _$CreateLeagueTeamResponseEntityFromJson(json);

  Map<String, dynamic> toJson() => _$CreateLeagueTeamResponseEntityToJson(this);

  @override
  CreateLeagueTeamResponseEntity restore(data) {
    throw UnimplementedError();
  }

  @override
  String transform() {
    return this.orderId.toString();
  }
}
