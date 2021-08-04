import 'package:dartz/dartz.dart';
import 'package:data/entity/remote/invite_buddies/player_id_entity.dart';
import 'package:data/entity/remote/knockout/invite_knockout_buddies_request_entity.dart';
import 'package:data/network/rest/api_interceptor.dart';
import 'package:data/network/rest/utils/safe_api_call.dart';
import 'package:data/source/knockout/knockout_data_source.dart';
import 'package:dio/dio.dart';
import 'package:domain/error/network_error.dart';
import 'package:domain/model/invitebuddies/player_id.dart';
import 'package:domain/model/knockout/knockout_invitation.dart';
import 'package:domain/model/knockout/knockout_list_info.dart';
import 'package:domain/model/knockout/knockout_team.dart';
import 'package:domain/repository/knockout/knockout_repository.dart';
import 'package:domain/repository/user/user_repository.dart';

class KnockoutRepositoryImpl extends KnockoutRepository {
  final KnockoutRemoteDS _remoteDS;
  final UserRepository _userRepository;
  final Dio _dio;

  KnockoutRepositoryImpl(this._remoteDS, this._userRepository, this._dio) {
    _dio.interceptors.add(ApiInterceptor(this._userRepository, _dio));
  }

  @override
  Future<Either<NetworkError, KnockoutListInfo>> getKnockout(
      {int skip, int take}) async {
    final response = await safeApiCall(_remoteDS.getKnockout(skip: skip, take: take));
    return response.fold((l) => Left(l), (r) {
      return Right(
        r.data.transform(),
      );
    });
  }

  @override
  Future<Either<NetworkError, KnockoutTeam>> createKnockoutTeam(
      {String knockoutId, String teamName}) async {
    final response = await safeApiCall(_remoteDS.createKnockoutTeam(
        knockoutId: knockoutId, teamName: teamName));
    return response.fold((l) => Left(l), (r) {
      return Right(
        r.data.transform(),
      );
    });
  }

  @override
  Future<Either<NetworkError, KnockoutInvitation>> inviteKnockoutBuddies(
      {String teamId,
      String type,
      String knockoutId,
      List<PlayerId> buddiesList}) async {
    List<PlayerIdEntity> list = [];
    buddiesList.every((element) {
      list.add(PlayerIdEntity(id: element.id.toString()));
      return true;
    });

    final response = await safeApiCall(
      _remoteDS.inviteKnockoutBuddies(
        request: InviteKnockoutBuddiesRequestEntity(
          teamId: teamId,
          type: type,
          knockoutId: knockoutId,
          players: list,
        ),
      ),
    );
    return response.fold((l) => Left(l), (r) {
      return Right(
        r.data.transform(),
      );
    });
  }
}
