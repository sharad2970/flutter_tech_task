import 'package:flutter/material.dart';
import 'package:flutter_base/di/home/home_module.dart';
import 'package:flutter_base/feature/home/home_page_view.dart';
import 'package:flutter_base/feature/home/home_page_view_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_base/base/base_page.dart';
import 'package:flutter_base/main/navigation/route_paths.dart';
import 'package:flutter_base/ui/molecule/goal_one_svg.dart';
import 'package:flutter_base/utils/asset_utils.dart';
import 'package:flutter_base/utils/color_utils.dart';

/// Leagues Page
class HomePage extends BasePage<HomePageViewModel> {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState
    extends BaseStatefulPage<HomePageViewModel, HomePage> {
  @override
  ProviderBase provideBase() => homeViewModelProvider;

  @override
  Widget buildAppbar() {
    return AppBar(
      leading: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(30, 20, 0, 0),
          child: InkWell(

            child: GoalOneSvg.asset(AssetUtils.home, width: 38, height: 38),
            onTap: () {
              if (Navigator.canPop(context)) {
                exitPage();
              }else{
                Navigator.pushNamedAndRemoveUntil(
                  context,
                  RoutePaths.Home,
                  ModalRoute.withName(RoutePaths.Home),
                );
              }
            },
          )),
      backgroundColor: GoalOneColor.white,
      elevation: 0.0,
    );
  }

  @override
  Widget buildView(BuildContext context, model) {
    return HomePageView(provideBase());
  }
}
