import 'package:domain/model/payment_invitations/Invitation_data.dart';
import 'package:domain/utils/mapper/base_layer_data_transformer.dart';
import 'package:json_annotation/json_annotation.dart';

part 'payment_invitations_response_entity_data.g.dart';

@JsonSerializable()
class PaymentInvitationsEntityData
    implements
        BaseLayerDataTransformer<PaymentInvitationsEntityData, InvitationData> {
  @JsonKey(name: 'player_id')
  int playerId;
  @JsonKey(name: 'first_name')
  String firstName;
  @JsonKey(name: 'last_name')
  String lastName;
  @JsonKey(name: 'order_ids')
  int orderId;
  @JsonKey(name: 'date')
  String date;
  @JsonKey(name: 'start_time')
  String startTime;
  @JsonKey(name: 'end_time')
  String endTime;
  @JsonKey(name: 'payment_status')
  String paymentStatus;
  @JsonKey(name: 'split_amount')
  String splitAmount;
  @JsonKey(name: "sub_order_id")
  int subOrderId;
  @JsonKey(name: "pitch_id")
  int pitchId;

  @JsonKey(name: "is_split")
  int isSplit;
  @JsonKey(name: 'paid_amount')
  String paidAmount;

  @JsonKey(name: "knockout_id")
  int knockoutId;

  @JsonKey(name: "league_id")
  int leagueId;


  PaymentInvitationsEntityData();

  @JsonKey(name: "order_type")
  String orderType;

  @JsonKey(name: "league_start_date")
  String leagueStartDate;

  @JsonKey(name: "league_end_date")
  String leagueEndDate;

  @JsonKey(name: "knockout_start_date")
  String knockoutStartDate;

  @JsonKey(name: "knockout_end_date")
  String knockoutEndDate;


  factory PaymentInvitationsEntityData.fromJson(Map<String, dynamic> json) =>
      _$PaymentInvitationsEntityDataFromJson(json);

  Map<String, dynamic> toJson() => _$PaymentInvitationsEntityDataToJson(this);

  @override
  PaymentInvitationsEntityData restore(data) {
    throw UnimplementedError();
  }

  @override
  InvitationData transform() {
    return InvitationData(
      playerId: this.playerId,
      firstName: this.firstName,
      lastName: this.lastName,
      orderId: this.orderId,
      date: this.date,
      startTime: this.startTime,
      endTime: this.endTime,
      paymentStatus: this.paymentStatus,
      subOrderId: this.subOrderId,
      pitchId: this.pitchId,
      splitAmount: (this.splitAmount != null && this.splitAmount.isNotEmpty)
          ? num.tryParse(this.splitAmount)
          : -1,
      isSplit: this.isSplit,
      paidAmount: this.paidAmount,
      orderType: this.orderType,
      leagueStartDate: this.leagueStartDate,
      leagueEndDate: this.leagueEndDate,
      knockoutStartDate: this.knockoutStartDate,
      knockoutEndDate: this.knockoutEndDate,
      knockoutId: this.knockoutId,
      leagueId: this.leagueId,

    );
  }
}
