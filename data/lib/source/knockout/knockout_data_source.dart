import 'package:data/entity/remote/knockout/invite_knockout_buddies_request_entity.dart';
import 'package:data/entity/remote/knockout/knockout_create_team_response.dart';
import 'package:data/entity/remote/knockout/knockout_invitation_response.dart';
import 'package:data/entity/remote/knockout/knockout_list_response_entity.dart';
import 'package:data/entity/remote/knockout/knockout_response.dart';
import 'package:flutter/widgets.dart';
import 'package:retrofit/retrofit.dart';

abstract class KnockoutRemoteDS {
  Future<HttpResponse<KnockoutListResponseEntity>> getKnockout({
    @required int skip, @required int take
});

  Future<HttpResponse<KnockoutTeamCreateResponse>> createKnockoutTeam(
      {String knockoutId, String teamName});

  Future<HttpResponse<KnockoutInvitationResponse>> inviteKnockoutBuddies(
      {InviteKnockoutBuddiesRequestEntity request});
}
