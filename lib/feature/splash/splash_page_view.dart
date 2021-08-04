import 'package:domain/constants/enum/language_enum.dart';
import 'package:domain/constants/goal_one_errors.dart';
import 'package:domain/model/user.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_base/base/base_page.dart';
import 'package:flutter_base/di/app/app_modules.dart';
import 'package:flutter_base/feature/splash/splash_page_model.dart';
import 'package:flutter_base/main/navigation/route_paths.dart';
import 'package:flutter_base/ui/molecule/goal_one_svg.dart';
import 'package:flutter_base/ui/molecule/stream_builder/goal_one_stream_builder.dart';
import 'package:flutter_base/utils/asset_utils.dart';
import 'package:flutter_base/utils/resource.dart';
import 'package:flutter_base/utils/status.dart';

/// This is Scaffold body of the SplashPage.
class SplashPageView extends BasePageViewWidget<SplashViewModel> {
  SplashPageView(ProviderBase model) : super(model);

  @override
  Widget build(BuildContext context, model) {
    return SafeArea(
        child: GoalOneStreamBuilder<Resource<User>>(
          initialData: Resource.none(),
          stream: model.currentUser,
          onData: (data) {

            if (data.status == Status.SUCCESS) {
                ProviderScope.containerOf(context)
              .read(appViewModel)
              .toggleLocale(data.data.locale);

            if (data.data.isLoggedIn) {
              Navigator.pushReplacementNamed(context, RoutePaths.Home);
            } else {
              Navigator.pushReplacementNamed(context, RoutePaths.OnBoarding);
            }
        } else if (data.status == Status.ERROR) {
          ProviderScope.containerOf(context)
              .read(appViewModel)
              .toggleLocale(LanguageEnum.ENGLISH);
          switch (data.goalOneAppError.type) {
            case ErrorType.DB_USER_NOT_FOUND:
              Navigator.pushReplacementNamed(context, RoutePaths.OnBoarding);
              break;
            default:
              break;
          }
        }
      },
      dataBuilder: (context, data) {
        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(child: GoalOneSvg.asset(AssetUtils.logo)),
            ],
          ),
        );
      },
    ));
  }
}
