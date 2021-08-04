import 'package:data/entity/remote/invite_buddies/invite_buddies_response_entity.dart';
import 'package:domain/model/invitebuddies/Invite_buddies.dart';
import 'package:domain/utils/mapper/base_layer_data_transformer.dart';
import 'package:json_annotation/json_annotation.dart';

part 'invite_buddies_response.g.dart';

@JsonSerializable()
class InviteBuddiesResponse implements BaseLayerDataTransformer<InviteBuddiesResponse, InviteBuddies> {
  @JsonKey(name: 'data')
  final InviteBuddiesResponseEntity data;

  InviteBuddiesResponse({this.data});

  factory InviteBuddiesResponse.fromJson(Map<String, dynamic> json) =>
      _$InviteBuddiesResponseFromJson(json);

  Map<String, dynamic> toJson() => _$InviteBuddiesResponseToJson(this);

  @override
  InviteBuddiesResponse restore(data) {
    // TODO: implement restore
    throw UnimplementedError();
  }

  @override
  InviteBuddies transform() {
    return InviteBuddies(
        splitAmount: this.data.splitAmount,
      blockPitchIds: this.data.blockPitchId.map((e) => e.transform()).toList());
  }
}
