import 'package:dartz/dartz.dart';
import 'package:domain/error/network_error.dart';
import 'package:domain/model/buddy/accepted_buddy.dart';
import 'package:domain/model/buddy/buddy_friend_info.dart';
import 'package:domain/model/buddy/buddy_player_info.dart';
import 'package:domain/model/buddy/buddy_request_info.dart';
import 'package:domain/model/buddy/player.dart';

abstract class BuddyRepository {
  Future<Either<NetworkError, BuddyPlayerInfo>> getBuddyPlayerList(
      {String search, int skip, int take});

  Future<Either<NetworkError, Player>> addBuddy({String receiverId});

  Future<Either<NetworkError, BuddyRequestInfo>> getBuddyRequestList(
      {String search, int skip, int take});

  Future<Either<NetworkError, BuddyFriendInfo>> getBuddyFriendList(
      {String search, int skip, int take, String type, String typeId});

  Future<Either<NetworkError, AcceptedBuddy>> acceptBuddyRequest(
      {String requestedId, String status});

  Future<Either<NetworkError, String>> removeBuddy({String requestedId});

  Future<Either<NetworkError, String>> inviteContact({String mobNo});
}
