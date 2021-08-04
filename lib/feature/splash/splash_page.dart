import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_base/base/base_page.dart';
import 'package:flutter_base/di/splash/splash_modules.dart';
import 'package:flutter_base/feature/splash/splash_page_model.dart';
import 'package:flutter_base/feature/splash/splash_page_view.dart';

/// This is the Splash Screen Widget
class SplashPage extends BasePage<SplashViewModel> {
  @override
  SplashPageState createState() => SplashPageState();
}

/// This is the Splash Screen Widget State
class SplashPageState extends BaseStatefulPage<SplashViewModel, SplashPage> {
  @override
  void onModelReady(SplashViewModel model) {}

  @override
  ProviderBase provideBase() {
    return splashViewModelProvider;
  }

  @override
  Widget buildView(BuildContext context, SplashViewModel model) {
    return SplashPageView(provideBase());
  }
}
