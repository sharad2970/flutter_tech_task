import 'package:data/entity/remote/leagues/league_list_info_entity.dart';
import 'package:domain/model/leagues/league_list_info.dart';
import 'package:domain/utils/mapper/base_layer_data_transformer.dart';
import 'package:json_annotation/json_annotation.dart';

part 'league_list_response_entity.g.dart';

@JsonSerializable()
class LeagueListResponseEntity
    implements
        BaseLayerDataTransformer<LeagueListResponseEntity, LeagueListInfo> {
  @JsonKey(name: 'data')
  LeagueListInfoEntity data;

  LeagueListResponseEntity();

  factory LeagueListResponseEntity.fromJson(Map<String, dynamic> json) =>
      _$LeagueListResponseEntityFromJson(json);

  Map<String, dynamic> toJson() => _$LeagueListResponseEntityToJson(this);

  @override
  LeagueListResponseEntity restore(LeagueListInfo data) {
    throw UnimplementedError();
  }

  @override
  LeagueListInfo transform() {
    // return data.transform();
    if (data != null) return data.transform();
    return LeagueListInfo();
  }
}
