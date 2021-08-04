import 'package:data/entity/remote/invite_buddies/player_id_entity.dart';
import 'package:json_annotation/json_annotation.dart';

part 'invite_buddies_request_entity.g.dart';

@JsonSerializable()
class InviteBuddiesRequestEntity {
  @JsonKey(name: "order_id")
  final String orderId;
  @JsonKey(name: "payment_method")
  final String paymentMethod;
  @JsonKey(name: "order_status")
  final String orderStatus;
  @JsonKey(name: "payment_status")
  final String paymentStatus;
  @JsonKey(name: "players")
  final List<PlayerIdEntity> players;

  InviteBuddiesRequestEntity(
      {this.orderId,
      this.paymentMethod,
      this.orderStatus,
      this.paymentStatus,
      this.players});

  factory InviteBuddiesRequestEntity.fromJson(Map<String, dynamic> json) =>
      _$InviteBuddiesRequestEntityFromJson(json);

  Map<String, dynamic> toJson() => _$InviteBuddiesRequestEntityToJson(this);
}
