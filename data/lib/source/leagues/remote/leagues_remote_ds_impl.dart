import 'package:data/entity/local/user_db_entity.dart';
import 'package:data/entity/remote/leagues/create_league_team_request_entity.dart';
import 'package:data/entity/remote/leagues/create_league_team_response.dart';
import 'package:data/entity/remote/leagues/league_list_request_entity.dart';
import 'package:data/entity/remote/leagues/league_list_response_entity.dart';
import 'package:data/entity/remote/leagues/league_table_request_entity.dart';
import 'package:data/entity/remote/leagues/league_table_response.dart';
import 'package:data/entity/remote/leagues/league_teams_request.dart';
import 'package:data/entity/remote/leagues/league_teams_response.dart';
import 'package:data/entity/remote/leagues/leagues_response.dart';
import 'package:data/entity/remote/leagues/player_id_request_entity.dart';
import 'package:data/entity/remote/leagues/rules_and_regulations_request.dart';
import 'package:data/entity/remote/leagues/rules_and_regulations_response.dart';
import 'package:data/entity/remote/leagues/upcoming_fixture_request_entity.dart';
import 'package:data/entity/remote/leagues/upcoming_fixtures_response.dart';
import 'package:data/network/rest/api_service.dart';
import 'package:data/source/user/user_data_sources.dart';
import 'package:domain/constants/enum/booking_type_enum.dart';
import 'package:domain/model/leagues/create_team_league_request.dart';
import 'package:domain/model/user.dart';
import 'package:flutter/widgets.dart';
import 'package:retrofit/dio.dart';

import '../leagues_data_source.dart';

class LeaguesRemoteDSImpl extends LeaguesRemoteDS {
  final ApiService _apiService;
  final UserLocalDS _userLocalDS;

  LeaguesRemoteDSImpl(this._apiService, this._userLocalDS);

  @override
  Future<HttpResponse<LeagueListResponseEntity>> getLeagues(
      {@required int skip, @required int take}) async {
    UserDBEntity userDBEntity = await _userLocalDS.getCurrentUser();
    User user = userDBEntity.transform();
    return _apiService
        .getLeagues(LeagueListRequestEntity(userId: '${user.id}',
        skip:skip.toString(),take: take.toString() ));
  }

  @override
  Future<HttpResponse<LeagueTeamsResponse>> getLeagueTeams({String leagueId}) {
    return _apiService.getLeagueTeams(LeagueTeamsRequest(leagueId: leagueId));
  }

  @override
  Future<HttpResponse<UpcomingFixturesResponse>> getUpcomingFixturesResponse(
      {String leagueId}) {
    return _apiService.getUpcomingFixturesResponse(
        request: UpcomingFixturesRequestEntity(
      leagueId: leagueId,
    ));
  }

  @override
  Future<HttpResponse<RulesAndRegulationsResponse>> getRulesAndRegulations(
      {String leagueId, BookingTypeEnum bookingTypeEnum}) {
    return bookingTypeEnum == BookingTypeEnum.LEAGUE
        ? _apiService.getRulesAndRegulationsForLeague(
            request: RulesAndRegulationsRequest(leagueId: leagueId))
        : _apiService.getRulesAndRegulationsForKnockout(
            request: RulesAndRegulationsRequest(knockoutId: leagueId));
  }

  @override
  Future<HttpResponse<LeagueTableResponse>> leagueTableResponse(
      {String leagueId}) {
    return _apiService.getLeagueTableResponse(
        request: LeagueTableRequestEntity(
      leagueId: leagueId,
    ));
  }

  @override
  Future<HttpResponse<CreateLeagueTeamResponse>> createLeagueTeamResponse(
      {CreateTeamRequest request}) async {
    UserDBEntity userDBEntity = await _userLocalDS.getCurrentUser();
    User user = userDBEntity.transform();

    List<PlayerIdRequestEntity> playerIds = [];
    playerIds.add(PlayerIdRequestEntity(id: user.id));
    request.playerIds.every((element) {
      playerIds.add(PlayerIdRequestEntity(id: int.tryParse(element.id)));
      return true;
    });
    return _apiService.addBuddiesToLeagueTeam(
        request: CreateLeagueTeamRequestEntity(
            typeId: request.typeId,
            teamId: request.teamId,
            type: request.bookingType,
            playerIds: playerIds));
  }
}
