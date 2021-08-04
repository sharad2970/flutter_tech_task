import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base/feature/home/home_page.dart';
import 'package:flutter_base/feature/settings/settings_page.dart';
import 'package:flutter_base/main/navigation/route_paths.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutePaths.Settings:
        return CupertinoPageRoute(
            builder: (context) => SettingsPage(),
            settings: RouteSettings(name: RoutePaths.Settings));
      case RoutePaths.Home:
        return CupertinoPageRoute(
            builder: (context) => HomePage(),
            settings: RouteSettings(name: RoutePaths.Home));


      default:
        return CupertinoPageRoute(
          builder: (context) => Container(),
        );
    }
  }
}
