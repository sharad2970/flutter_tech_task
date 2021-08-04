import 'package:data/entity/local/user_db_entity.dart';
import 'package:data/entity/remote/invite_buddies/player_id_entity.dart';
import 'package:data/entity/remote/knockout/invite_knockout_buddies_request_entity.dart';
import 'package:data/entity/remote/knockout/knockout_create_team_response.dart';
import 'package:data/entity/remote/knockout/knockout_invitation_response.dart';
import 'package:data/entity/remote/knockout/knockout_list_response_entity.dart';
import 'package:data/network/rest/api_service.dart';
import 'package:data/source/user/user_data_sources.dart';
import 'package:domain/model/user.dart';
import 'package:flutter/widgets.dart';
import 'package:retrofit/dio.dart';

import '../knockout_data_source.dart';

class KnockoutRemoteDSImpl extends KnockoutRemoteDS {
  final ApiService _apiService;
  final UserLocalDS _userLocalDS;

  KnockoutRemoteDSImpl(this._apiService, this._userLocalDS);

  @override
  Future<HttpResponse<KnockoutListResponseEntity>> getKnockout(
      {@required int skip, @required int take}) {
    Map<String, dynamic> body = Map<String, dynamic>();

    body['skip'] = skip;
    body['take'] = take;
    return _apiService.getKnockout(body: body);

  }

  @override
  Future<HttpResponse<KnockoutTeamCreateResponse>> createKnockoutTeam(
      {String knockoutId, String teamName}) async {
    UserDBEntity userDBEntity = await _userLocalDS.getCurrentUser();
    User user = userDBEntity.transform();

    Map<String, dynamic> body = Map<String, dynamic>();

    body['knockout_id'] = knockoutId;
    body['team_name'] = teamName;
    body['captain_id'] = user.id;

    return _apiService.createKnockoutTeam(body: body);
  }

  @override
  Future<HttpResponse<KnockoutInvitationResponse>> inviteKnockoutBuddies(
      {InviteKnockoutBuddiesRequestEntity request}) async {
    UserDBEntity userDBEntity = await _userLocalDS.getCurrentUser();
    User user = userDBEntity.transform();
    request.players.add(PlayerIdEntity(id: '${user.id}'));

    return _apiService.inviteKnockoutBuddies(requestData: request);
  }
}
