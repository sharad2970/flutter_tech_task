import 'package:domain/model/buddy/accepted_buddy.dart';
import 'package:domain/utils/mapper/base_layer_data_transformer.dart';
import 'package:json_annotation/json_annotation.dart';

part 'accept_buddy_response_entity.g.dart';

@JsonSerializable()
class AcceptBuddyResponseEntity
    implements
        BaseLayerDataTransformer<AcceptBuddyResponseEntity, AcceptedBuddy> {
  @JsonKey(name: 'message')
  String message;
  @JsonKey(name: 'data')
  AcceptBuddyEntity data;

  AcceptBuddyResponseEntity();

  factory AcceptBuddyResponseEntity.fromJson(Map<String, dynamic> json) =>
      _$AcceptBuddyResponseEntityFromJson(json);

  Map<String, dynamic> toJson() => _$AcceptBuddyResponseEntityToJson(this);

  @override
  AcceptBuddyResponseEntity restore(AcceptedBuddy data) {
    throw UnimplementedError();
  }

  @override
  AcceptedBuddy transform() {
    return data.transform();
  }
}

@JsonSerializable()
class AcceptBuddyEntity
    implements BaseLayerDataTransformer<AcceptBuddyEntity, AcceptedBuddy> {
  @JsonKey(name: 'id')
  int id;
  @JsonKey(name: 'sender_id')
  int senderId;
  @JsonKey(name: 'receiver_id')
  int receiverId;
  @JsonKey(name: 'status')
  int status;
  @JsonKey(name: 'updated_at')
  String updatedDate;

  AcceptBuddyEntity();

  factory AcceptBuddyEntity.fromJson(Map<String, dynamic> json) =>
      _$AcceptBuddyEntityFromJson(json);

  Map<String, dynamic> toJson() => _$AcceptBuddyEntityToJson(this);

  @override
  AcceptBuddyEntity restore(AcceptedBuddy data) {
    throw UnimplementedError();
  }

  @override
  AcceptedBuddy transform() {
    return AcceptedBuddy(
        id: id,
        senderId: senderId,
        receiverId: receiverId,
        updatedDate: updatedDate);
  }
}
