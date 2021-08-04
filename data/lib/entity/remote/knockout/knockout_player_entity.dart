import 'package:domain/model/knockout/knockout.dart';
import 'package:domain/utils/mapper/base_layer_data_transformer.dart';
import 'package:json_annotation/json_annotation.dart';

part 'knockout_player_entity.g.dart';

@JsonSerializable()
class KnockoutPlayerEntity
    implements BaseLayerDataTransformer<KnockoutPlayerEntity, Knockout> {
  @JsonKey(name: 'knockout_id')
  final int id;
  @JsonKey(name: "order_id")
  final int orderId;
  @JsonKey(name: "knockout_name")
  final String name;
  @JsonKey(name: 'no_of_teams')
  final int noOfTeams;
  @JsonKey(name: 'start_date')
  final String startDate;
  @JsonKey(name: 'end_date')
  final String endDate;
  @JsonKey(name: 'amount')
  final String amount;
  @JsonKey(name: 'description')
  final String description;
  @JsonKey(name: 'rules')
  final String rules;
  @JsonKey(name: 'created_at')
  final String createdAt;
  @JsonKey(name: 'updated_at')
  final String updatedAt;
  @JsonKey(name: "is_player_invited")
  final bool isPlayerInvited;
  @JsonKey(name: 'team_player')
  final bool isTeamPlayer;
  @JsonKey(name: "payment_status")
  final String paymentStatus;
  @JsonKey(name: "playerPayment")
  final String playerPaymentStatus;
  @JsonKey(name: "captain")
  final bool isCaption;
  @JsonKey(name: "payment_method")
  final String paymentMethod;
  @JsonKey(name: "isTeammaxout")
  final bool isTeamLimitExceeded;

  KnockoutPlayerEntity(
    this.id,
    this.orderId,
    this.name,
    this.noOfTeams,
    this.startDate,
    this.endDate,
    this.amount,
    this.description,
    this.rules,
    this.createdAt,
    this.updatedAt,
    this.isPlayerInvited,
    this.isTeamPlayer,
    this.paymentStatus,
    this.playerPaymentStatus,
    this.isCaption,
    this.paymentMethod,
    this.isTeamLimitExceeded,
  );

  factory KnockoutPlayerEntity.fromJson(Map<String, dynamic> json) =>
      _$KnockoutPlayerEntityFromJson(json);

  Map<String, dynamic> toJson() => _$KnockoutPlayerEntityToJson(this);

  @override
  KnockoutPlayerEntity restore(data) {
    throw UnimplementedError();
  }

  @override
  Knockout transform() {
    return Knockout(
      knockoutId: this.id,
      orderId: this.orderId,
      description: this.description,
      amount: this.amount,
      createdAt: this.createdAt,
      endDate: this.endDate,
      name: this.name,
      noOfTeams: this.noOfTeams,
      rules: this.rules,
      startDate: this.startDate,
      updatedAt: this.updatedAt,
      isPlayerInvited: this.isPlayerInvited,
      isTeamPlayer: this.isTeamPlayer,
      paymentStatus: this.paymentStatus,
      playerPaymentStatus: this.playerPaymentStatus,
      isCaption: this.isCaption,
      paymentMethod: this.paymentMethod,
      isTeamLimitExceeded: this.isTeamLimitExceeded,
    );
  }
}
