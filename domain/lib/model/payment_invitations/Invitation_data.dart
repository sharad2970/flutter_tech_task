class InvitationData {
  final int playerId;
  final String firstName;
  final String lastName;
  final int orderId;
  final String date;
  final String startTime;
  final String endTime;
  final String paymentStatus;
  final num splitAmount;
  final int subOrderId;
  final int pitchId;
  final int isSplit;
  final String paidAmount;
  final String orderType;
  final String leagueStartDate;
  final String leagueEndDate;
  final String knockoutStartDate;
  final String knockoutEndDate;
  final int knockoutId;
  final int leagueId;

  InvitationData({
    this.playerId,
    this.firstName,
    this.lastName,
    this.orderId,
    this.date,
    this.startTime,
    this.endTime,
    this.paymentStatus,
    this.splitAmount: -1,
    this.isSplit,
    this.paidAmount,
    this.subOrderId,
    this.pitchId,
    this.orderType,
    this.leagueStartDate,
    this.leagueEndDate,
    this.knockoutStartDate,
    this.knockoutEndDate,
    this.knockoutId,
    this.leagueId,
  });
}
