import 'package:data/entity/remote/buddy/buddy_friend_list_entity.dart';
import 'package:domain/model/buddy/buddy_friend_info.dart';
import 'package:domain/utils/mapper/base_layer_data_transformer.dart';
import 'package:json_annotation/json_annotation.dart';

part 'buddy_friend_list_info_entity.g.dart';

@JsonSerializable()
class BuddyFriendListInfoEntity
    implements
        BaseLayerDataTransformer<BuddyFriendListInfoEntity, BuddyFriendInfo> {
  @JsonKey(name: 'acceptedPlaylists')
  List<BuddyFriendListEntity> data;
  @JsonKey(name: 'count')
  int count;
  @JsonKey(name: 'skip')
  int skip;
  @JsonKey(name: 'take')
  int take;

  BuddyFriendListInfoEntity();

  factory BuddyFriendListInfoEntity.fromJson(Map<String, dynamic> json) =>
      _$BuddyFriendListInfoEntityFromJson(json);

  Map<String, dynamic> toJson() => _$BuddyFriendListInfoEntityToJson(this);

  @override
  BuddyFriendListInfoEntity restore(BuddyFriendInfo data) {
    throw UnimplementedError();
  }

  @override
  BuddyFriendInfo transform() {
    return BuddyFriendInfo(
      list: data.map((e) => e.transform()).toList(),
      take: take,
      skip: skip,
      count: count,
    );
  }
}
