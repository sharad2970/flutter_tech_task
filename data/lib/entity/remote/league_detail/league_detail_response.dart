import 'package:data/entity/remote/leagues/league_response_entity.dart';
import 'package:domain/model/leagues/league_list_info.dart';
import 'package:domain/model/leagues/leagues.dart';
import 'package:domain/utils/mapper/base_layer_data_transformer.dart';
import 'package:json_annotation/json_annotation.dart';

part 'league_detail_response.g.dart';

@JsonSerializable()
class LeagueDetailResponse
    implements BaseLayerDataTransformer<LeagueDetailResponse, Leagues> {
  @JsonKey(name: 'leaguesList')
  List<LeagueResponseEntity> data;


  LeagueDetailResponse();

  factory LeagueDetailResponse.fromJson(Map<String, dynamic> json) =>
      _$LeagueDetailResponseFromJson(json);

  Map<String, dynamic> toJson() => _$LeagueDetailResponseToJson(this);

  @override
  LeagueDetailResponse restore(Leagues data) {
    throw UnimplementedError();
  }

  @override
  Leagues transform() {
    if(data==null || data.isEmpty){
      return Leagues();
    }
    return Leagues(
      leagueName: this.data[0].leagueName ,
      leagueId: this.data[0].leagueId ,
      endDate: this.data[0].endDate,
      startDate: this.data[0].startDate,
     isCaptain: this.data[0].isCaptain,
      orderId:this.data[0].orderId !=null ? '${this.data[0].orderId}' :'',
      isTeamCreated: this.data[0].teamPlayer,
      paymentMethod: this.data[0].paymentMethod,
      paymentStatus: this.data[0].paymentStatus,
      playerPayment: this.data[0].playerPayment,
      teamId: this.data[0].teamId

    );
  }
}
