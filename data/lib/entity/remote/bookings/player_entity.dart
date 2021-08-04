import 'package:domain/model/booking_details/booking_payment_details.dart';
import 'package:domain/utils/mapper/base_layer_data_transformer.dart';
import 'package:json_annotation/json_annotation.dart';

part 'player_entity.g.dart';

@JsonSerializable()
class PlayerEntity implements BaseLayerDataTransformer<PlayerEntity, Player> {
  @JsonKey(name: 'first_name')
  String firstName;
  @JsonKey(name: 'last_name')
  String lastName;
  @JsonKey(name: "paid_player_first_name")
  String paidPlayerFirstName;
  @JsonKey(name: "paid_player_last_name")
  String paidPlayerLastName;
  @JsonKey(name: "player_id")
  int playerId;
  @JsonKey(name: "split_amount")
  String splitAmt;
  @JsonKey(name: "payment_status")
  String paymentStatus;
  @JsonKey(name: "payment_method")
  String paymentMethod;
  @JsonKey(name: "paid_player_id")
  int paidPlayerId;
  @JsonKey(name: "is_split")
  int isSplit;

  PlayerEntity();

  factory PlayerEntity.fromJson(Map<String, dynamic> json) =>
      _$PlayerEntityFromJson(json);

  Map<String, dynamic> toJson() => _$PlayerEntityToJson(this);

  @override
  PlayerEntity restore(Player data) {
    throw UnimplementedError();
  }

  @override
  Player transform() {
    return Player(
      firstName: firstName,
      lastName: lastName,
      paidByUserFirstName: paidPlayerFirstName,
      paidByUserLastName: paidPlayerLastName,
      playerId: playerId,
      splitAmount: splitAmt,
      paymentStatus: paymentStatus,
      paymentMethod: paymentMethod,
      paidPlayerId: paidPlayerId,
      isSplit: isSplit,
    );
  }
}
