import 'package:data/entity/remote/leagues/league_table_response_entity.dart';
import 'package:domain/model/leagues/league_table.dart';
import 'package:domain/utils/mapper/base_layer_data_transformer.dart';
import 'package:json_annotation/json_annotation.dart';

part 'league_table_response.g.dart';

@JsonSerializable()
class LeagueTableResponse
    implements
        BaseLayerDataTransformer<LeagueTableResponse, List<LeagueTable>> {
  @JsonKey(name: 'data')
  final LeagueTableResponseEntity data;

  LeagueTableResponse({this.data});

  factory LeagueTableResponse.fromJson(Map<String, dynamic> json) =>
      _$LeagueTableResponseFromJson(json);

  Map<String, dynamic> toJson() => _$LeagueTableResponseToJson(this);

  @override
  LeagueTableResponse restore(data) {
    throw UnimplementedError();
  }

  @override
  List<LeagueTable> transform() {
    return this.data.transform();
  }
}
