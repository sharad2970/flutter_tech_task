import 'package:domain/model/knockout/knockout_details.dart';
import 'package:domain/utils/mapper/base_layer_data_transformer.dart';
import 'package:json_annotation/json_annotation.dart';

part 'knockout_detail_info_entity.g.dart';

@JsonSerializable()
class KnockoutDetailInfoEntity
    implements
        BaseLayerDataTransformer<KnockoutDetailInfoEntity, KnockoutDetails> {
  @JsonKey(name: "knockout_id")
  final int id;
  @JsonKey(name: "order_id")
  final int orderId;
  @JsonKey(name: "knockout_name")
  final String name;
  @JsonKey(name: "no_of_teams")
  final int noOfTeams;
  @JsonKey(name: "start_date")
  final String startDate;
  @JsonKey(name: "end_date")
  final String endDate;
  @JsonKey(name: "amount")
  final String amount;
  @JsonKey(name: "description")
  final String description;
  @JsonKey(name: "rules")
  final String rules;
  @JsonKey(name: "created_at")
  final String createdAt;
  @JsonKey(name: "updated_at")
  final String updatedAt;
  @JsonKey(name: "deleted_at")
  final String deletedAt;
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
  @JsonKey(name: "team_name")
  final String teamName;

  KnockoutDetailInfoEntity(
      {this.id,
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
      this.deletedAt,
      this.isTeamPlayer,
      this.paymentStatus,
      this.isPlayerInvited,
      this.playerPaymentStatus,
      this.isCaption,
      this.paymentMethod,
      this.isTeamLimitExceeded,
      this.teamName});

  factory KnockoutDetailInfoEntity.fromJson(Map<String, dynamic> json) =>
      _$KnockoutDetailInfoEntityFromJson(json);

  Map<String, dynamic> toJson() => _$KnockoutDetailInfoEntityToJson(this);

  @override
  KnockoutDetailInfoEntity restore(data) {
    // TODO: implement restore
    throw UnimplementedError();
  }

  @override
  KnockoutDetails transform() {
    return KnockoutDetails(
      id: this.id,
      name: this.name,
      numberOfTeams: this.noOfTeams,
      startDate: this.startDate,
      endDate: this.endDate,
      amount: this.amount,
      description: this.description,
      rules: this.rules,
      createdAt: this.createdAt,
      updatedAt: this.updatedAt,
      deletedAt: this.deletedAt,
      isTeamLimitExceeded: this.isTeamLimitExceeded,
      paymentStatus: this.paymentStatus,
      orderId: this.orderId,
      paymentMethod: this.paymentMethod,
      isCaption: this.isCaption,
      playerPaymentStatus: this.playerPaymentStatus,
      isPlayerInvited: this.isPlayerInvited,
      isTeamPlayer: this.isTeamPlayer,
      noOfTeams: this.noOfTeams,
      teamName: this.teamName,
    );
  }
}
