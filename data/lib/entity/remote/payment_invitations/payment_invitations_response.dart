import 'package:data/entity/remote/payment_invitations/payment_invitations_response_entity.dart';
import 'package:domain/model/payment_invitations/payment_invitations.dart';
import 'package:domain/utils/mapper/base_layer_data_transformer.dart';
import 'package:json_annotation/json_annotation.dart';

part 'payment_invitations_response.g.dart';

@JsonSerializable()
class PaymentInvitationsResponse
    implements
        BaseLayerDataTransformer<PaymentInvitationsResponse,
            PaymentInvitations> {
  @JsonKey(name: 'data')
  PaymentInvitationsResponseEntity data;

  PaymentInvitationsResponse({this.data});

  factory PaymentInvitationsResponse.fromJson(Map<String, dynamic> json) =>
      _$PaymentInvitationsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$PaymentInvitationsResponseToJson(this);

  @override
  PaymentInvitationsResponse restore(PaymentInvitations data) {
    throw UnimplementedError();
  }

  @override
  PaymentInvitations transform() {
    return data.transform();
  }
}
