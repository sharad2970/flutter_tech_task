import 'package:data/di/repository_module.dart';
import 'package:domain/usecase/leagues/league_teams_use_case.dart';
import 'package:domain/usecase/leagues/leagues_use_case.dart';
import 'package:domain/usecase/leagues/upcoming_fixtures_use_case.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:domain/usecase/leagues/rules_and_regulations_use_case.dart';
import 'package:domain/usecase/leagues/league_table_use_case.dart';
import 'package:domain/usecase/leagues/create_team_use_case.dart';
import 'package:domain/usecase/league_details_usecase/league_details_usecase.dart';

/// Provide dependency of LeaguesUseCase.
final leaguesUseCaseProvider = Provider.autoDispose<LeaguesUseCase>(
  (ref) => LeaguesUseCase(
    ref.read(leagueRepoProvider),
  ),
);

final leagueTeamsUseCaseProvider = Provider.autoDispose<LeagueTeamsUseCase>(
  (ref) => LeagueTeamsUseCase(
    ref.read(leagueRepoProvider),
  ),
);


final upcomingFixturesUseCaseProvider =
    Provider.autoDispose<UpcomingFixturesUseCase>(
  (ref) => UpcomingFixturesUseCase(
    ref.read(leagueRepoProvider),
  ),
);

final rulesAndRegulationsUseCaseProvider = Provider.autoDispose<RulesAndRegulationsUseCase>(
      (ref) => RulesAndRegulationsUseCase(
    ref.read(leagueRepoProvider),
  ),
);

final leagueTableUseCaseProvider = Provider.autoDispose<LeagueTableUseCase>(
      (ref) => LeagueTableUseCase(
    ref.read(leagueRepoProvider),
  ),
);

final createTeamUseCaseProvider = Provider.autoDispose<CreateLeagueTeamUseCase>(
      (ref) => CreateLeagueTeamUseCase(
    ref.read(leagueRepoProvider),
  ),
);

final leagueDetailUseCaseProvider = Provider.autoDispose<LeagueDetailUseCase>(
      (ref) => LeagueDetailUseCase(
    ref.read(leagueDetailRepoProvider),
  ),
);
