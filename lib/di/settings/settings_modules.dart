import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_base/di/usecases/user_use_cases.dart';
import 'package:flutter_base/feature/settings/settings_page_model.dart';

final settingsViewModelProvider =
    ChangeNotifierProvider.autoDispose<SettingsPageViewModel>(
  (ref) => SettingsPageViewModel(ref.read(logoutUseCaseProvider)),
);
