import 'package:domain/model/knockout/knockout_invitation.dart';
import 'package:domain/utils/mapper/base_layer_data_transformer.dart';
import 'package:json_annotation/json_annotation.dart';

part 'knockout_invitation_response_entity.g.dart';

@JsonSerializable()
class KnockoutInvitationResponseEntity
    implements
        BaseLayerDataTransformer<KnockoutInvitationResponseEntity,
            KnockoutInvitation> {
  @JsonKey(name: "order_id")
  final int orderId;

  KnockoutInvitationResponseEntity(this.orderId);

  factory KnockoutInvitationResponseEntity.fromJson(
          Map<String, dynamic> json) =>
      _$KnockoutInvitationResponseEntityFromJson(json);

  Map<String, dynamic> toJson() =>
      _$KnockoutInvitationResponseEntityToJson(this);

  @override
  KnockoutInvitationResponseEntity restore(data) {
    throw UnimplementedError();
  }

  @override
  KnockoutInvitation transform() {
    return KnockoutInvitation(
      orderId: this.orderId.toString(),
    );
  }
}
