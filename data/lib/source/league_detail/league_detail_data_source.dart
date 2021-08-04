import 'package:data/entity/remote/league_detail/league_detail_response_entity.dart';
import 'package:flutter/cupertino.dart';
import 'package:retrofit/retrofit.dart';

abstract class LeagueDetailRemoteDS {
  Future<HttpResponse<LeagueDetailResponseEntity>> getLeagueDetail(
      {@required String leagueId});
}
