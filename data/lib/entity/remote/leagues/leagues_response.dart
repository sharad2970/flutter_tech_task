import 'package:data/entity/remote/leagues/league_response_entity.dart';
import 'package:domain/model/leagues/leagues.dart';
import 'package:domain/utils/mapper/base_layer_data_transformer.dart';
import 'package:json_annotation/json_annotation.dart';

part 'leagues_response.g.dart';

@JsonSerializable()
class LeaguesResponse
    implements BaseLayerDataTransformer<LeaguesResponse, List<Leagues>> {
  @JsonKey(name: 'data')
  List<LeagueResponseEntity> data;

  LeaguesResponse({this.data});

  factory LeaguesResponse.fromJson(Map<String, dynamic> json) =>
      _$LeaguesResponseFromJson(json);

  Map<String, dynamic> toJson() => _$LeaguesResponseToJson(this);

  @override
  LeaguesResponse restore(data) {
    throw UnimplementedError();
  }

  @override
  List<Leagues> transform() {
    return this.data.map((e) => e.transform()).toList();
  }
}
