import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_base/base/base_page.dart';
import 'package:flutter_base/feature/settings/settings_page_model.dart';
import 'package:flutter_base/main/navigation/route_paths.dart';
import 'package:flutter_base/ui/molecule/goal_one_settings_tile.dart';
import 'package:flutter_base/utils/color_utils.dart';

class SettingsPageView extends BasePageViewWidget<SettingsPageViewModel> {
  SettingsPageView(ProviderBase model) : super(model);

  @override
  Widget build(BuildContext context, model) {
    return SafeArea(
        child: SingleChildScrollView(
      physics: ClampingScrollPhysics(),
      padding: EdgeInsets.only(left: 30, right: 30, bottom: 43),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(bottom: 13,),
            child: Text('Settings',
                style: TextStyle(
                  color: GoalOneColor.grass,
                  fontSize: 31,
                  fontWeight: FontWeight.w800,
                )),
          ),
          GoalOneSettingsTile(
            onTap: () {
              Navigator.pushNamed(context, RoutePaths.Home);
            },
            title: 'Movies Home',),
          GoalOneSettingsTile(
            title: 'About us',
          ),
          GoalOneSettingsTile(
            title: 'Terms & Conditions',
          ),
          GoalOneSettingsTile(
            title: 'FAQ',
          ),
          GoalOneSettingsTile(
            title: 'Privacy Policy',
          ),
          GoalOneSettingsTile(
            title: 'Change Password',
          ),
          GoalOneSettingsTile(
            title: 'Delete Account',
          ),
          GoalOneSettingsTile(
            title: 'Logout',
          )
        ],
      ),
    ));
  }
}
