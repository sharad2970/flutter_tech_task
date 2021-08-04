import 'package:data/entity/remote/leagues/league_response_entity.dart';
import 'package:domain/model/leagues/league_list_info.dart';
import 'package:domain/utils/mapper/base_layer_data_transformer.dart';
import 'package:json_annotation/json_annotation.dart';

part 'league_list_info_entity.g.dart';

@JsonSerializable()
class LeagueListInfoEntity
    implements BaseLayerDataTransformer<LeagueListInfoEntity, LeagueListInfo> {
  @JsonKey(name: 'leaguesList')
  List<LeagueResponseEntity> data;
  @JsonKey(name: 'count')
  int count;
  @JsonKey(name: 'skip')
  int skip;
  @JsonKey(name: 'take')
  int take;

  LeagueListInfoEntity();

  factory LeagueListInfoEntity.fromJson(Map<String, dynamic> json) =>
      _$LeagueListInfoEntityFromJson(json);

  Map<String, dynamic> toJson() => _$LeagueListInfoEntityToJson(this);

  @override
  LeagueListInfoEntity restore(LeagueListInfo data) {
    throw UnimplementedError();
  }

  @override
  LeagueListInfo transform() {
    return LeagueListInfo(
      count: count ?? 0,
      skip: skip ?? 0,
      take: take ?? 0,
      list: data == null ? [] : data.map((e) => e.transform()).toList(),
    );
  }
}
