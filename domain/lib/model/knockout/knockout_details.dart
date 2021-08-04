class KnockoutDetails {
  final int id;
  final int orderId;
  final String name;
  final int numberOfTeams;
  final String startDate;
  final String endDate;
  final String amount;
  final String description;
  final String rules;
  final String createdAt;
  final String updatedAt;
  final String deletedAt;
  final int noOfTeams;
  final bool isPlayerInvited;
  final bool isTeamPlayer;
  final String paymentStatus;
  final String playerPaymentStatus;
  final bool isCaption;
  final String paymentMethod;
  final bool isTeamLimitExceeded;
  final String teamName;

  KnockoutDetails(
      {this.id,
      this.orderId,
      this.name,
      this.numberOfTeams,
      this.startDate,
      this.endDate,
      this.amount,
      this.description,
      this.rules,
      this.createdAt,
      this.updatedAt,
      this.deletedAt,
      this.isTeamLimitExceeded,
      this.paymentMethod,
      this.isCaption,
      this.playerPaymentStatus,
      this.isPlayerInvited,
      this.paymentStatus,
      this.isTeamPlayer,
      this.noOfTeams,
      this.teamName});
}
