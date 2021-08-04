class Knockout {
  final int knockoutId;
  final int orderId;
  final String name;
  final int noOfTeams;
  final String startDate;
  final String endDate;
  final String amount;
  final String description;
  final String rules;
  final String createdAt;
  final String updatedAt;
  final bool isPlayerInvited;
  final bool isTeamPlayer;
  final String paymentStatus;
  final String playerPaymentStatus;
  final bool isCaption;
  final String paymentMethod;
  final bool isTeamLimitExceeded;

  Knockout({
    this.knockoutId,
    this.orderId,
    this.name,
    this.noOfTeams,
    this.startDate,
    this.endDate,
    this.amount,
    this.description,
    this.rules,
    this.createdAt,
    this.updatedAt,
    this.isPlayerInvited,
    this.isTeamPlayer,
    this.paymentStatus,
    this.playerPaymentStatus,
    this.isCaption,
    this.paymentMethod,
    this.isTeamLimitExceeded,
  });
}
