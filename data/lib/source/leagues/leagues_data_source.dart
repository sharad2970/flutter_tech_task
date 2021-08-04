import 'package:data/entity/remote/leagues/create_league_team_response.dart';
import 'package:data/entity/remote/leagues/league_list_response_entity.dart';
import 'package:data/entity/remote/leagues/league_table_response.dart';
import 'package:data/entity/remote/leagues/league_teams_response.dart';
import 'package:data/entity/remote/leagues/rules_and_regulations_response.dart';
import 'package:data/entity/remote/leagues/upcoming_fixtures_response.dart';
import 'package:domain/constants/enum/booking_type_enum.dart';
import 'package:domain/model/leagues/create_team_league_request.dart';
import 'package:flutter/widgets.dart';
import 'package:retrofit/retrofit.dart';

abstract class LeaguesRemoteDS {
  Future<HttpResponse<LeagueListResponseEntity>> getLeagues({
    @required int skip, @required int take
});

  Future<HttpResponse<LeagueTeamsResponse>> getLeagueTeams({String leagueId});

  Future<HttpResponse<UpcomingFixturesResponse>> getUpcomingFixturesResponse(
      {String leagueId});

  Future<HttpResponse<RulesAndRegulationsResponse>> getRulesAndRegulations(
      {String leagueId, BookingTypeEnum bookingTypeEnum});

  Future<HttpResponse<LeagueTableResponse>> leagueTableResponse(
      {String leagueId});

  Future<HttpResponse<CreateLeagueTeamResponse>> createLeagueTeamResponse(
      {CreateTeamRequest request});
}
