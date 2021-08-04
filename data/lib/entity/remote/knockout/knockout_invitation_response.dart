import 'package:data/entity/remote/knockout/knockout_invitation_response_entity.dart';
import 'package:domain/model/knockout/knockout_invitation.dart';
import 'package:domain/utils/mapper/base_layer_data_transformer.dart';
import 'package:json_annotation/json_annotation.dart';

part 'knockout_invitation_response.g.dart';

@JsonSerializable()
class KnockoutInvitationResponse
    implements
        BaseLayerDataTransformer<KnockoutInvitationResponse,
            KnockoutInvitation> {
  @JsonKey(name: 'data')
  KnockoutInvitationResponseEntity data;

  KnockoutInvitationResponse({this.data});

  factory KnockoutInvitationResponse.fromJson(Map<String, dynamic> json) =>
      _$KnockoutInvitationResponseFromJson(json);

  Map<String, dynamic> toJson() => _$KnockoutInvitationResponseToJson(this);

  @override
  KnockoutInvitationResponse restore(data) {
    throw UnimplementedError();
  }

  @override
  KnockoutInvitation transform() {
    return KnockoutInvitation(
      orderId: data.orderId.toString(),
    );
  }
}
