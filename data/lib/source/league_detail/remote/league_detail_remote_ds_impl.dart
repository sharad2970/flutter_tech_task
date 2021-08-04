import 'package:data/entity/remote/league_detail/league_detail_response_entity.dart';
import 'package:data/network/rest/api_service.dart';
import 'package:data/source/league_detail/league_detail_data_source.dart';
import 'package:data/source/user/user_data_sources.dart';
import 'package:retrofit/dio.dart';

class LeagueDetailRemoteDSImpl extends LeagueDetailRemoteDS {
  final ApiService _apiService;
  final UserLocalDS _userLocalDS;

  LeagueDetailRemoteDSImpl(this._apiService, this._userLocalDS);

  @override
  Future<HttpResponse<LeagueDetailResponseEntity>> getLeagueDetail(
      {String leagueId}) {
    Map<String, dynamic> body = Map<String, dynamic>();
    body['league_id'] = leagueId;
    return _apiService.getLeagueDetail(body: body);
  }
}
