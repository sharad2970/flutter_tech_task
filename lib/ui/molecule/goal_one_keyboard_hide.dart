import 'package:flutter/cupertino.dart';

class GoalOneKeyBoardHide extends StatelessWidget {
  final Widget child;

  const GoalOneKeyBoardHide({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: child,
    );
  }
}
