import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter_base/utils/color_utils.dart';

class GoalOneToast {
  GoalOneToast._();

  static showToast(
    String message, {
    Color backgroundColor: GoalOneColor.pinkishGrey,
    Toast duration: Toast.LENGTH_LONG,
    Color textColor: GoalOneColor.white,
    ToastGravity gravity: ToastGravity.BOTTOM,
  }) {
    Fluttertoast.showToast(
      msg: message,
      toastLength: duration,
      gravity: gravity,
      backgroundColor: backgroundColor,
      timeInSecForIosWeb: 3,
      textColor: textColor,
      fontSize: 14,
    );
  }
}
