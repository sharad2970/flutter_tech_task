import 'package:domain/model/leagues/league_details.dart';
import 'package:domain/model/leagues/leagues.dart';
import 'package:domain/utils/mapper/base_layer_data_transformer.dart';
import 'package:json_annotation/json_annotation.dart';

part 'league_detail_info_entity.g.dart';

@JsonSerializable()
class LeagueDetailInfoEntity
    implements BaseLayerDataTransformer<LeagueDetailInfoEntity, Leagues> {
  @JsonKey(name: 'league_name')
  final String leagueName;
  @JsonKey(name: 'league_id')
  final int leagueId;
  @JsonKey(name: 'team_id')
  final int teamId;
  @JsonKey(name: 'team_player')
  final bool teamPlayer;
  @JsonKey(name: 'order_id')
  final int orderId;
  @JsonKey(name: 'payment_status')
  final String paymentStatus;
  @JsonKey(name: 'payment_method')
  final String paymentMethod;
  @JsonKey(name: 'captain')
  final bool isCaptain;
  @JsonKey(name: 'playerPayment')
  final String playerPayment;
  @JsonKey(name: 'start_date')
  final String startDate;
  @JsonKey(name: 'end_date')
  final String endDate;

  LeagueDetailInfoEntity({
    this.leagueName,
    this.leagueId,
    this.teamId,
    this.teamPlayer,
    this.orderId,
    this.paymentStatus,
    this.paymentMethod,
    this.isCaptain,
    this.playerPayment,
    this.startDate,
    this.endDate
  });

  factory LeagueDetailInfoEntity.fromJson(Map<String, dynamic> json) =>
      _$LeagueDetailInfoEntityFromJson(json);

  Map<String, dynamic> toJson() => _$LeagueDetailInfoEntityToJson(this);

  @override
  LeagueDetailInfoEntity restore(data) {
    // TODO: implement restore
    throw UnimplementedError();
  }

  @override
  Leagues transform() {
    return Leagues(
        leagueName: this.leagueName,
        leagueId: this.leagueId,
        teamId: this.teamId,
        isTeamCreated: this.teamPlayer,
        orderId: this.orderId != null ? '${this.orderId}': null,
        paymentStatus: this.paymentStatus,
        paymentMethod: this.paymentMethod,
        playerPayment: this.playerPayment,
        isCaptain: this.isCaptain == null ? false : this.isCaptain,
        startDate: this.startDate,
        endDate: this.endDate
    );
  }
}
