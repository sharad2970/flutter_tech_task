class LeagueTable {
  final int teamId;
  final String teamName;
  final int matchPlayed;
  final int points;
  final int won;
  final int draw;
  final int lost;
  final int gd;
  bool isExpanded;

  LeagueTable(
  { this.teamId,
    this.teamName,
    this.matchPlayed: 0,
    this.points: 0,
    this.won: 0,
    this.draw: 0,
    this.lost: 0,
    this.gd: 0,
    this.isExpanded: false});

}
