
import 'package:domain/model/invitebuddies/player_id.dart';

class CreateTeamRequest {
  final String typeId;
  final String teamId;
  final String bookingType;
  final List<PlayerId> playerIds;

  const CreateTeamRequest(
      {
        this.typeId,
        this.teamId,
        this.bookingType,
      this.playerIds: const []});
}
