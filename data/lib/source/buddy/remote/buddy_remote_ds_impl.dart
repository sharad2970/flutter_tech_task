import 'package:data/entity/local/user_db_entity.dart';
import 'package:data/entity/remote/buddy/accept_buddy_response_entity.dart';
import 'package:data/entity/remote/buddy/add_buddy_response_entity.dart';
import 'package:data/entity/remote/buddy/buddy_friend_list_response_entity.dart';
import 'package:data/entity/remote/buddy/buddy_player_list_response_entity.dart';
import 'package:data/entity/remote/buddy/buddy_request_list_response_entity.dart';
import 'package:data/entity/remote/buddy/invite_contact_response_entity.dart';
import 'package:data/entity/remote/buddy/remove_buddy_response_entity.dart';
import 'package:data/network/rest/api_service.dart';
import 'package:data/source/user/user_data_sources.dart';
import 'package:domain/model/user.dart';
import 'package:flutter/cupertino.dart';
import 'package:retrofit/dio.dart';

import '../buddy_data_source.dart';

class BuddyRemoteDSImpl extends BuddyRemoteDS {
  final ApiService _apiService;
  UserLocalDS _userLocalDS;

  BuddyRemoteDSImpl(this._apiService, this._userLocalDS);

  @override
  Future<HttpResponse<BuddyPlayerListResponseEntity>> getBuddyPlayerList(
      {@required String search, @required int skip, @required int take}) async {
    UserDBEntity userDBEntity = await _userLocalDS.getCurrentUser();
    User user = userDBEntity.transform();
    Map<String, dynamic> body = Map<String, dynamic>();
    body['sender_id'] = user.id;
    body['search'] = search;
    body['skip'] = skip;
    body['take'] = take;
    return _apiService.getBuddyPlayerList(body: body);
  }

  @override
  Future<HttpResponse<AddBuddyResponseEntity>> addBuddy(
      {String receiverId}) async {
    UserDBEntity userDBEntity = await _userLocalDS.getCurrentUser();
    User user = userDBEntity.transform();
    Map<String, dynamic> body = Map<String, dynamic>();
    body['sender_id'] = user.id;
    body['receiver_id'] = receiverId;
    return _apiService.addBuddy(body: body);
  }

  @override
  Future<HttpResponse<BuddyRequestListResponseEntity>> getBuddyRequestList(
      {@required String search, @required int skip, @required int take}) async {
    UserDBEntity userDBEntity = await _userLocalDS.getCurrentUser();
    User user = userDBEntity.transform();
    Map<String, dynamic> body = Map<String, dynamic>();
    body['receiver_id'] = user.id;
    body['search'] = search;
    body['skip'] = skip;
    body['take'] = take;
    return _apiService.getBuddyRequestList(body: body);
  }

  @override
  Future<HttpResponse<BuddyFriendListResponseEntity>> getBuddyFriendList(
      {@required String search,
      @required int skip,
      @required int take,
      String type,
      String typeId}) async {
    UserDBEntity userDBEntity = await _userLocalDS.getCurrentUser();
    User user = userDBEntity.transform();
    Map<String, dynamic> body = Map<String, dynamic>();
    body['receiver_id'] = user.id;
    body['search'] = search;
    body['skip'] = skip;
    body['take'] = take;
    body['type'] = type;
    body['type_id'] = typeId;

    return _apiService.getBuddyFriendList(body: body);
  }

  @override
  Future<HttpResponse<AcceptBuddyResponseEntity>> acceptBuddyRequest(
      {String requestedId, String status}) async {
    Map<String, dynamic> body = Map<String, dynamic>();
    body['requested_id'] = requestedId;
    body['status'] = status;
    return _apiService.acceptBuddyRequest(body: body);
  }

  @override
  Future<HttpResponse<RemoveBuddyResponseEntity>> removeBuddy(
      {String requestedId}) async {
    Map<String, dynamic> body = Map<String, dynamic>();
    body['requested_id'] = requestedId;
    return _apiService.removeBuddy(body: body);
  }

  @override
  Future<HttpResponse<InviteContactResponseEntity>> inviteContact(
      {String mobNo}) async {
    Map<String, dynamic> body = Map<String, dynamic>();
    body['mobile'] = mobNo;
    return _apiService.inviteContact(body: body);
  }
}
