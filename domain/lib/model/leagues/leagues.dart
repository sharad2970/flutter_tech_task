
class Leagues {
  final String leagueName;
  final int leagueId;
  final int teamId;
  final bool isTeamCreated;
  final String orderId;
  final String paymentStatus;
  final String paymentMethod;
  final bool isCaptain;
  final String playerPayment;
  final String startDate;
  final String endDate;

  Leagues(
      {
      this.leagueName,
      this.leagueId,
      this.teamId,
      this.isTeamCreated,
      this.orderId,
      this.paymentStatus,
      this.paymentMethod,
      this.isCaptain: false,
      this.playerPayment,
      this.startDate,
      this.endDate});
}
