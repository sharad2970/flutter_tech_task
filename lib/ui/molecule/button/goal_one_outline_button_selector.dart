import 'package:flutter/material.dart';
import 'package:flutter_base/utils/color_utils.dart';

class GoalOneOutlineButtonSelector extends StatelessWidget {
  final Function() onPressed;
  final String title;

  final double height;
  final double width;
  final EdgeInsetsGeometry margin;
  final EdgeInsetsGeometry padding;
  final double fontSize;
  final bool busy;
  final bool enable;
  final bool selected;

  GoalOneOutlineButtonSelector({
    Key key,
    @required this.onPressed,
    @required this.title,
    this.height: 59,
    this.width: 315,
    this.margin,
    this.padding,
    this.fontSize: 16,
    this.busy: false,
    this.enable: true,
    this.selected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: margin,
        padding: padding,
        child: Container(
          height: height,
          width: width,
          child: Material(
            color: Colors.transparent,
            child: InkWell(
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
                onTap: enable
                    ? () {
                        FocusScope.of(context).unfocus();
                        this.onPressed?.call();
                      }
                    : null,
                child: Ink(
                  decoration: BoxDecoration(
                    color: selected ? GoalOneColor.grass : GoalOneColor.white,
                    border: Border.all(
                        color: selected
                            ? GoalOneColor.grass
                            : GoalOneColor.pinkishGrey,
                        width: 1),
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                  ),
                  child: Center(
                    child: busy
                        ? Container(
                            height: 18,
                            width: 18,
                            child: CircularProgressIndicator(
                                valueColor: AlwaysStoppedAnimation(
                                  Theme.of(context).primaryColor,
                                ),
                                strokeWidth: 2.0),
                          )
                        : Text(title,
                            style: TextStyle(
                              color: selected
                                  ? GoalOneColor.white
                                  : GoalOneColor.pinkishGrey,
                              fontSize: fontSize,
                              fontWeight: FontWeight.w600,
                              fontStyle: FontStyle.normal,
                            )),
                  ),
                )),
          ),
        ));
  }
}
