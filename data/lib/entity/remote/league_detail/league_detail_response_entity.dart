import 'package:data/entity/remote/league_detail/league_detail_info_entity.dart';
import 'package:domain/model/leagues/leagues.dart';
import 'package:domain/utils/mapper/base_layer_data_transformer.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:domain/model/leagues/league_details.dart';

part 'league_detail_response_entity.g.dart';

@JsonSerializable()
class LeagueDetailResponseEntity
    implements
        BaseLayerDataTransformer<LeagueDetailResponseEntity,
            List<Leagues>> {
  @JsonKey(name: 'data')
 List<LeagueDetailInfoEntity>  data;

  LeagueDetailResponseEntity();

  factory LeagueDetailResponseEntity.fromJson(Map<String, dynamic> json) =>
      _$LeagueDetailResponseEntityFromJson(json);

  Map<String, dynamic> toJson() => _$LeagueDetailResponseEntityToJson(this);

  @override
  LeagueDetailResponseEntity restore(List<Leagues> data) {
    throw UnimplementedError();
  }

  @override
  List<Leagues> transform() {
    return data.map((e) => e.transform()).toList();
  }
}
