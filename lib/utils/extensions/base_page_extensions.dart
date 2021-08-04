import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter_base/base/base_page.dart';
import 'package:flutter_base/ui/molecule/goal_one_toast.dart';

extension PageExtensions on BaseStatefulPage {
  showShortToast(String message) {
    GoalOneToast.showToast(message, duration: Toast.LENGTH_SHORT);
  }

  showLongToast(String message) {
    GoalOneToast.showToast(message, duration: Toast.LENGTH_LONG);
  }
}
