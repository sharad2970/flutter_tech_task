import 'package:data/entity/remote/buddy/accept_buddy_response_entity.dart';
import 'package:data/entity/remote/buddy/add_buddy_response_entity.dart';
import 'package:data/entity/remote/buddy/buddy_friend_list_response_entity.dart';
import 'package:data/entity/remote/buddy/buddy_player_list_response_entity.dart';
import 'package:data/entity/remote/buddy/buddy_request_list_response_entity.dart';
import 'package:data/entity/remote/buddy/invite_contact_response_entity.dart';
import 'package:data/entity/remote/buddy/remove_buddy_response_entity.dart';
// import 'package:domain/model/invitebuddies/Invite_buddies_request.dart';
import 'package:flutter/widgets.dart';
import 'package:retrofit/retrofit.dart';

abstract class BuddyRemoteDS {
  Future<HttpResponse<BuddyPlayerListResponseEntity>> getBuddyPlayerList(
      {@required String search, @required int skip, @required int take});

  Future<HttpResponse<AddBuddyResponseEntity>> addBuddy(
      {@required String receiverId});

  Future<HttpResponse<BuddyRequestListResponseEntity>> getBuddyRequestList(
      {@required String search, @required int skip, @required int take});

  Future<HttpResponse<BuddyFriendListResponseEntity>> getBuddyFriendList(
      {@required String search,
      @required int skip,
      @required int take,
      String type,
      String typeId});

  Future<HttpResponse<AcceptBuddyResponseEntity>> acceptBuddyRequest(
      {@required String requestedId, @required String status});

  Future<HttpResponse<RemoveBuddyResponseEntity>> removeBuddy(
      {@required String requestedId});

  Future<HttpResponse<InviteContactResponseEntity>> inviteContact(
      {@required String mobNo});
}
