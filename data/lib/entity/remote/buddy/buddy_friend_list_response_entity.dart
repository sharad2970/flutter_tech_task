import 'package:data/entity/remote/buddy/buddy_friend_list_info_entity.dart';
import 'package:domain/model/buddy/buddy_friend_info.dart';
import 'package:domain/utils/mapper/base_layer_data_transformer.dart';
import 'package:json_annotation/json_annotation.dart';

part 'buddy_friend_list_response_entity.g.dart';

@JsonSerializable()
class BuddyFriendListResponseEntity
    implements
        BaseLayerDataTransformer<BuddyFriendListResponseEntity,
            BuddyFriendInfo> {
  @JsonKey(name: 'data')
  BuddyFriendListInfoEntity data;

  BuddyFriendListResponseEntity();

  factory BuddyFriendListResponseEntity.fromJson(Map<String, dynamic> json) =>
      _$BuddyFriendListResponseEntityFromJson(json);

  Map<String, dynamic> toJson() => _$BuddyFriendListResponseEntityToJson(this);

  @override
  BuddyFriendListResponseEntity restore(BuddyFriendInfo data) {
    throw UnimplementedError();
  }

  @override
  BuddyFriendInfo transform() {
    return data.transform();
  }
}
