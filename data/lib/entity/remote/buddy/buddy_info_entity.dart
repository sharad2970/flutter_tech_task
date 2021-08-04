import 'package:domain/model/buddy/buddy_info.dart';
import 'package:domain/utils/mapper/base_layer_data_transformer.dart';
import 'package:json_annotation/json_annotation.dart';

import 'buddy_entity.dart';

part 'buddy_info_entity.g.dart';

@JsonSerializable()
class BuddyInfoEntity
    implements BaseLayerDataTransformer<BuddyInfoEntity, BuddyInfo> {
  @JsonKey(name: 'id')
  int id;
  @JsonKey(name: 'sender_id')
  int senderId;
  @JsonKey(name: 'receiver_id')
  int receiverId;
  @JsonKey(name: 'status')
  int status;
  @JsonKey(name: 'sender')
  BuddyEntity buddyEntity;

  BuddyInfoEntity();

  factory BuddyInfoEntity.fromJson(Map<String, dynamic> json) =>
      _$BuddyInfoEntityFromJson(json);

  Map<String, dynamic> toJson() => _$BuddyInfoEntityToJson(this);

  @override
  BuddyInfoEntity restore(data) {
    // TODO: implement restore
    throw UnimplementedError();
  }

  @override
  BuddyInfo transform() {
    return BuddyInfo(
        id: id,
        senderId: senderId,
        receiverId: receiverId,
        status: status,
        buddy: buddyEntity.transform());
  }
}
