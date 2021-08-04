import 'package:data/entity/remote/payment_invitations/payment_invitations_response_entity_data.dart';
import 'package:domain/model/payment_invitations/payment_invitations.dart';
import 'package:domain/utils/mapper/base_layer_data_transformer.dart';
import 'package:json_annotation/json_annotation.dart';

part 'payment_invitations_response_entity.g.dart';

@JsonSerializable()
class PaymentInvitationsResponseEntity
    implements
        BaseLayerDataTransformer<PaymentInvitationsResponseEntity,
            PaymentInvitations> {
  @JsonKey(name: 'paymentInvitation')
  List<PaymentInvitationsEntityData> data;
  @JsonKey(name: 'count')
  int count;
  @JsonKey(name: 'skip')
  int skip;
  @JsonKey(name: 'take')
  int take;
  @JsonKey(name: 'currency')
  String currency;

  PaymentInvitationsResponseEntity();

  factory PaymentInvitationsResponseEntity.fromJson(
          Map<String, dynamic> json) =>
      _$PaymentInvitationsResponseEntityFromJson(json);

  Map<String, dynamic> toJson() =>
      _$PaymentInvitationsResponseEntityToJson(this);

  @override
  PaymentInvitationsResponseEntity restore(PaymentInvitations data) {
    throw UnimplementedError();
  }

  @override
  PaymentInvitations transform() {
    return PaymentInvitations(
        list: data.map((e) => e.transform()).toList(),
        take: take,
        skip: skip,
        count: count,
        currency: currency);
  }
}
