import 'package:dartz/dartz.dart';
import 'package:domain/error/network_error.dart';
import 'package:domain/model/invitebuddies/player_id.dart';
import 'package:domain/model/knockout/knockout.dart';
import 'package:domain/model/knockout/knockout_invitation.dart';
import 'package:domain/model/knockout/knockout_list_info.dart';
import 'package:domain/model/knockout/knockout_team.dart';

abstract class KnockoutRepository {
  Future<Either<NetworkError, KnockoutListInfo>> getKnockout(
      {int skip, int take});

  Future<Either<NetworkError, KnockoutTeam>> createKnockoutTeam(
      {String knockoutId, String teamName});

  Future<Either<NetworkError, KnockoutInvitation>> inviteKnockoutBuddies(
      {String teamId,
      String type,
      String knockoutId,
      final List<PlayerId> buddiesList});
}
