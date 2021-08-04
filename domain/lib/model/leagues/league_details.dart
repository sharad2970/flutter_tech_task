class LeagueDetails {
  final int id;
  final String name;
  final int numberOfTeams;
  final String startDate;
  final String endDate;
  final int amount;
  final String rules;
  final int status;
  final String createdAt;
  final String updatedAt;

  LeagueDetails(
      {this.id,
        this.name,
        this.numberOfTeams,
        this.startDate,
        this.endDate,
        this.amount,
        this.rules,
        this.status,
        this.createdAt,
        this.updatedAt,
       });
}
