import 'package:dartz/dartz.dart';
import 'package:data/network/rest/api_interceptor.dart';
import 'package:data/network/rest/utils/safe_api_call.dart';
import 'package:data/source/buddy/buddy_data_source.dart';
import 'package:dio/dio.dart';
import 'package:domain/error/network_error.dart';
import 'package:domain/model/buddy/accepted_buddy.dart';
import 'package:domain/model/buddy/buddy_friend_info.dart';
import 'package:domain/model/buddy/buddy_player_info.dart';
import 'package:domain/model/buddy/buddy_request_info.dart';
import 'package:domain/model/buddy/player.dart';
import 'package:domain/repository/buddy/buddy_repository.dart';
import 'package:domain/repository/user/user_repository.dart';

class BuddyRepositoryImpl extends BuddyRepository {
  final BuddyRemoteDS _remoteDS;
  final UserRepository _userRepository;
  final Dio _dio;

  BuddyRepositoryImpl(this._remoteDS, this._userRepository, this._dio) {
    _dio.interceptors.add(ApiInterceptor(this._userRepository, _dio));
  }

  @override
  Future<Either<NetworkError, BuddyPlayerInfo>> getBuddyPlayerList(
      {String search, int skip, int take}) async {
    final responseEntity = await safeApiCall(
        _remoteDS.getBuddyPlayerList(search: search, skip: skip, take: take));
    return responseEntity.fold((l) => Left(l), (r) {
      return Right(
        r.data.transform(),
      );
    });
  }

  @override
  Future<Either<NetworkError, Player>> addBuddy({String receiverId}) async {
    final responseEntity =
        await safeApiCall(_remoteDS.addBuddy(receiverId: receiverId));
    return responseEntity.fold((l) => Left(l), (r) {
      return Right(
        r.data.transform(),
      );
    });
  }

  @override
  Future<Either<NetworkError, BuddyRequestInfo>> getBuddyRequestList(
      {String search, int skip, int take}) async {
    final responseEntity = await safeApiCall(
        _remoteDS.getBuddyRequestList(search: search, skip: skip, take: take));
    return responseEntity.fold((l) => Left(l), (r) {
      return Right(
        r.data.transform(),
      );
    });
  }

  @override
  Future<Either<NetworkError, BuddyFriendInfo>> getBuddyFriendList(
      {String search, int skip, int take, String type, String typeId}) async {
    final responseEntity = await safeApiCall(_remoteDS.getBuddyFriendList(
        search: search, skip: skip, take: take, type: type, typeId: typeId));
    return responseEntity.fold((l) => Left(l), (r) {
      return Right(
        r.data.transform(),
      );
    });
  }

  @override
  Future<Either<NetworkError, AcceptedBuddy>> acceptBuddyRequest(
      {String requestedId, String status}) async {
    final responseEntity = await safeApiCall(
        _remoteDS.acceptBuddyRequest(requestedId: requestedId, status: status));
    return responseEntity.fold((l) => Left(l), (r) {
      return Right(
        r.data.transform(),
      );
    });
  }

  @override
  Future<Either<NetworkError, String>> removeBuddy({String requestedId}) async {
    final responseEntity =
        await safeApiCall(_remoteDS.removeBuddy(requestedId: requestedId));
    return responseEntity.fold((l) => Left(l), (r) {
      return Right(
        r.data.transform(),
      );
    });
  }

  @override
  Future<Either<NetworkError, String>> inviteContact({String mobNo}) async {
    final responseEntity =
        await safeApiCall(_remoteDS.inviteContact(mobNo: mobNo));
    return responseEntity.fold((l) => Left(l), (r) {
      return Right(
        r.data.transform(),
      );
    });
  }
}
