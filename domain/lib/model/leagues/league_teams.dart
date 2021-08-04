import 'package:domain/model/leagues/team_player.dart';

class LeagueTeams {
  final int id;
  final String teamName;
  final int teamNumber;
  final int captainId;
  final int status;
  final String createdAt;
  final String updatedAt;
  final bool isCaptain;
  final String paymentStatus;
  final String paymentMethod;
  final bool isTeamMember;
  final List<TeamPlayer> teamPlayer;

  const LeagueTeams(
      {this.id,
      this.teamName,
      this.teamNumber,
      this.captainId,
      this.status,
      this.createdAt,
      this.updatedAt,
      this.isCaptain,
      this.paymentStatus,
      this.paymentMethod,
      this.isTeamMember : false,
      this.teamPlayer: const []});
}
