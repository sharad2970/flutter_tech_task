import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_base/base/base_page.dart';
import 'package:flutter_base/di/settings/settings_modules.dart';
import 'package:flutter_base/feature/settings/settings_page_model.dart';
import 'package:flutter_base/feature/settings/settings_page_view.dart';
import 'package:flutter_base/ui/molecule/goal_one_svg.dart';
import 'package:flutter_base/utils/asset_utils.dart';

class SettingsPage extends BasePage<SettingsPageViewModel> {
  @override
  SettingsPageState createState() => SettingsPageState();
}

class SettingsPageState
    extends BaseStatefulPage<SettingsPageViewModel, SettingsPage> {
  @override
  Widget buildView(BuildContext context, SettingsPageViewModel model) {
    return SettingsPageView(provideBase());
  }

  @override
  Widget buildAppbar() {
    return AppBar(
      leading: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(30, 20, 0, 0),
          child: InkWell(
            child:
                GoalOneSvg.asset(AssetUtils.backArrow,  width: 18, height: 22),
            onTap: exitPage,
          )),
      elevation: 0.0,
    );
  }

  @override
  ProviderBase provideBase() {
    return settingsViewModelProvider;
  }
}
