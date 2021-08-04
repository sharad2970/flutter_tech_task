import 'package:json_annotation/json_annotation.dart';

part 'payment_invitations_request.g.dart';

@JsonSerializable()
class PaymentInvitationsRequest {
  @JsonKey(name: "player_id")
  final String playerId;
  @JsonKey(name: "skip")
  final int skip;
  @JsonKey(name: "take")
  final int take;


  PaymentInvitationsRequest({this.playerId, this.skip, this.take});

  factory PaymentInvitationsRequest.fromJson(Map<String, dynamic> json) =>
      _$PaymentInvitationsRequestFromJson(json);

  Map<String, dynamic> toJson() => _$PaymentInvitationsRequestToJson(this);
}
