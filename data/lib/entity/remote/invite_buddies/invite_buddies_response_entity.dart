import 'package:data/entity/remote/pitchbook/blocked_pitch_id_entity.dart';
import 'package:domain/model/invitebuddies/Invite_buddies.dart';
import 'package:domain/utils/mapper/base_layer_data_transformer.dart';
import 'package:json_annotation/json_annotation.dart';

part 'invite_buddies_response_entity.g.dart';

@JsonSerializable()
class InviteBuddiesResponseEntity
    implements
        BaseLayerDataTransformer<InviteBuddiesResponseEntity, InviteBuddies> {
  @JsonKey(name: 'split_amount')
  final num splitAmount;
  @JsonKey(name: 'blockPitchId')
  final List<BlockedPitchIdEntity> blockPitchId;
  @JsonKey(name: 'isBookingSessionExpired')
  final bool isBookingSessionExpired;
  @JsonKey(name: 'message')
  final String message;

  InviteBuddiesResponseEntity({this.splitAmount, this.blockPitchId, this.isBookingSessionExpired, this.message});

  factory InviteBuddiesResponseEntity.fromJson(Map<String, dynamic> json) =>
      _$InviteBuddiesResponseEntityFromJson(json);

  Map<String, dynamic> toJson() => _$InviteBuddiesResponseEntityToJson(this);

  @override
  InviteBuddiesResponseEntity restore(data) {
    // TODO: implement restore
    throw UnimplementedError();
  }

  @override
  InviteBuddies transform() {
    return InviteBuddies(
        splitAmount: this.splitAmount,
        blockPitchIds: (this.blockPitchId != null && this.blockPitchId.isNotEmpty)
            ? this.blockPitchId.map((e) => e.transform()).toList() : [],
        isBookingSessionExpired: this.isBookingSessionExpired,
        message: this.message ?? ''

    );
  }
}
