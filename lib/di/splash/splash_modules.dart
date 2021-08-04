import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_base/di/usecases/user_use_cases.dart';
import 'package:flutter_base/feature/splash/splash_page_model.dart';

/// Provide dependency to the SplashViewModel.
final splashViewModelProvider =
    ChangeNotifierProvider.autoDispose<SplashViewModel>(
  (ref) => SplashViewModel(ref.read(getCurrentUserUseCaseProvider)),
);
