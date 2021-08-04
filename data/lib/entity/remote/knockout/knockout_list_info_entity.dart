

import 'package:data/entity/remote/knockout/knockout_player_entity.dart';
import 'package:domain/model/knockout/knockout_list_info.dart';
import 'package:domain/utils/mapper/base_layer_data_transformer.dart';
import 'package:json_annotation/json_annotation.dart';

part 'knockout_list_info_entity.g.dart';

@JsonSerializable()
class KnockoutListInfoEntity
    implements
        BaseLayerDataTransformer<KnockoutListInfoEntity, KnockoutListInfo> {
  @JsonKey(name: 'knockoutList')
  List<KnockoutPlayerEntity> data;
  @JsonKey(name: 'count')
  int count;
  @JsonKey(name: 'skip')
  int skip;
  @JsonKey(name: 'take')
  int take;

  KnockoutListInfoEntity();

  factory KnockoutListInfoEntity.fromJson(Map<String, dynamic> json) =>
      _$KnockoutListInfoEntityFromJson(json);

  Map<String, dynamic> toJson() => _$KnockoutListInfoEntityToJson(this);

  @override
  KnockoutListInfoEntity restore(KnockoutListInfo data) {
    throw UnimplementedError();
  }

  @override
  KnockoutListInfo transform() {
    return KnockoutListInfo(
      count: count,
      skip: skip,
      take: take,
      list: data.map((e) => e.transform()).toList(),
    );
  }
}
