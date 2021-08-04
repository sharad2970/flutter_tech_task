import 'package:data/entity/remote/buddy/player_entity.dart';
import 'package:domain/model/buddy/buddy_player_info.dart';
import 'package:domain/utils/mapper/base_layer_data_transformer.dart';
import 'package:json_annotation/json_annotation.dart';

part 'buddy_player_list_info_entity.g.dart';

@JsonSerializable()
class BuddyPlayerListInfoEntity
    implements
        BaseLayerDataTransformer<BuddyPlayerListInfoEntity, BuddyPlayerInfo> {
  @JsonKey(name: 'playerList')
  List<PlayerEntity> data;
  @JsonKey(name: 'count')
  int count;
  @JsonKey(name: 'skip')
  int skip;
  @JsonKey(name: 'take')
  int take;

  BuddyPlayerListInfoEntity();

  factory BuddyPlayerListInfoEntity.fromJson(Map<String, dynamic> json) =>
      _$BuddyPlayerListInfoEntityFromJson(json);

  Map<String, dynamic> toJson() => _$BuddyPlayerListInfoEntityToJson(this);

  @override
  BuddyPlayerListInfoEntity restore(BuddyPlayerInfo data) {
    throw UnimplementedError();
  }

  @override
  BuddyPlayerInfo transform() {
    return BuddyPlayerInfo(
      count: count,
      skip: skip,
      take: take,
      list: data.map((e) => e.transform()).toList(),
    );
  }
}
