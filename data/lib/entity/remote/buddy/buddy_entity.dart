import 'package:domain/model/buddy/buddy.dart';
import 'package:domain/utils/mapper/base_layer_data_transformer.dart';
import 'package:json_annotation/json_annotation.dart';

part 'buddy_entity.g.dart';

@JsonSerializable()
class BuddyEntity implements BaseLayerDataTransformer<BuddyEntity, Buddy> {
  @JsonKey(name: 'id')
  int id;
  @JsonKey(name: 'first_name')
  String firstName;
  @JsonKey(name: 'last_name')
  String lastName;
  @JsonKey(name: 'avatar')
  String avatar;
  @JsonKey(name: 'isRequested')
  bool isRequested;
  @JsonKey(name: 'requestedId')
  String requestedId;

  BuddyEntity();

  factory BuddyEntity.fromJson(Map<String, dynamic> json) =>
      _$BuddyEntityFromJson(json);

  Map<String, dynamic> toJson() => _$BuddyEntityToJson(this);

  @override
  BuddyEntity restore(data) {
    // TODO: implement restore
    throw UnimplementedError();
  }

  @override
  Buddy transform() {
    return Buddy(
        id: id,
        firstName: firstName,
        lastName: lastName,
        avatar: avatar,
        isRequested: isRequested,
        requestedId: requestedId);
  }
}
