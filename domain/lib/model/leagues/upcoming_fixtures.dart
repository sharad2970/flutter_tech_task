class UpcomingFixtures {
  final int bookingId;
  final String firstTeam;
  final String secondTeam;
  final String bookingDate;
  final String startTime;
  final String endTime;
  final int pitchNumber;
  bool isExpanded;

  UpcomingFixtures({
    this.bookingId,
    this.firstTeam,
    this.secondTeam,
    this.bookingDate,
    this.startTime,
    this.endTime,
    this.pitchNumber,
    this.isExpanded: false
});
}
