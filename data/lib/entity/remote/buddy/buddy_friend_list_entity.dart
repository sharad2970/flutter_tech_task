import 'package:domain/model/buddy/buddy.dart';
import 'package:domain/utils/mapper/base_layer_data_transformer.dart';
import 'package:json_annotation/json_annotation.dart';

part 'buddy_friend_list_entity.g.dart';

@JsonSerializable()
class BuddyFriendListEntity
    implements BaseLayerDataTransformer<BuddyFriendListEntity, Buddy> {
  @JsonKey(name: 'id')
  int id;
  @JsonKey(name: 'mobile')
  String mobile;
  @JsonKey(name: 'email')
  String email;
  @JsonKey(name: 'first_name')
  String firstName;
  @JsonKey(name: 'last_name')
  String lastName;
  @JsonKey(name: 'avatar')
  String avatar;
  @JsonKey(name: "player_id")
  int playerId;
  @JsonKey(name: "player_ids")
  int playerIds;
  @JsonKey(name: 'requested_at')
  String requestedDate;
  @JsonKey(name: 'player_first_name')
  String playerFirstName;
  @JsonKey(name: 'player_last_name')
  String playerLastName;
  @JsonKey(name: 'player_avatar')
  String playerAvatar;
  @JsonKey(name: 'team_member')
  bool teamMember;

  BuddyFriendListEntity();

  factory BuddyFriendListEntity.fromJson(Map<String, dynamic> json) =>
      _$BuddyFriendListEntityFromJson(json);

  Map<String, dynamic> toJson() => _$BuddyFriendListEntityToJson(this);

  @override
  BuddyFriendListEntity restore(data) {
    throw UnimplementedError();
  }

  @override
  Buddy transform() {
    return Buddy(
      avatar: this.avatar,
      firstName: this.firstName,
      id: this.id,
      isRequested: false,
      lastName: this.lastName,
      requestedId: "",
      playerId: playerId,
      playerIds: this.playerIds,
      requestedDate: requestedDate,
      playerFirstName: playerFirstName,
      playerLastName: playerLastName,
      mobile: this.mobile,
      playerAvatar: this.playerAvatar,
      isTeamMember: this.teamMember,
    );
  }
}
