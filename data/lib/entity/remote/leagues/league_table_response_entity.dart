import 'package:data/entity/remote/leagues/league_table_data_entity.dart';
import 'package:domain/model/leagues/league_table.dart';
import 'package:domain/utils/mapper/base_layer_data_transformer.dart';
import 'package:json_annotation/json_annotation.dart';

part 'league_table_response_entity.g.dart';

@JsonSerializable()
class LeagueTableResponseEntity
    implements
        BaseLayerDataTransformer<LeagueTableResponseEntity, List<LeagueTable>> {
  @JsonKey(name: 'teamsData')
  final List<LeagueTableDataEntity> teamsData;

  LeagueTableResponseEntity({this.teamsData});

  factory LeagueTableResponseEntity.fromJson(Map<String, dynamic> json) =>
      _$LeagueTableResponseEntityFromJson(json);

  Map<String, dynamic> toJson() => _$LeagueTableResponseEntityToJson(this);

  @override
  LeagueTableResponseEntity restore(data) {
    throw UnimplementedError();
  }

  @override
  List<LeagueTable> transform() {
    return this.teamsData.map((e) => e.transform()).toList();
  }
}
