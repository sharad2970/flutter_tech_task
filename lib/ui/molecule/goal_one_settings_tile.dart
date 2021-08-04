import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_base/ui/molecule/goal_one_svg.dart';
import 'package:flutter_base/utils/asset_utils.dart';
import 'package:flutter_base/utils/color_utils.dart';

class GoalOneSettingsTile extends StatelessWidget {
  final String title;
  final Function onTap;

  GoalOneSettingsTile({this.title, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap?.call();
      },
      child: Container(
        padding: EdgeInsets.all(22),
        margin: EdgeInsets.symmetric(vertical: 7.5),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(5)),
            border: Border.all(color: GoalOneColor.grass, width: 1),
            color: Colors.white),
        child: Row(
          children: <Widget>[
            Expanded(
                child: Text(
              title,
              style: TextStyle(
                fontSize: 17,
                color: GoalOneColor.grass,
                fontWeight: FontWeight.w600,
              ),
            )),
            RotatedBox(
              quarterTurns: 0,
              child: GoalOneSvg.asset(AssetUtils.rightArrow,
                  color: GoalOneColor.grass),
            ),
          ],
        ),
      ),
    );
  }
}
