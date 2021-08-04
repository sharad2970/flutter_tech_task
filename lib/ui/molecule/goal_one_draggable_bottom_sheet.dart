import 'package:flutter/material.dart';

class GoalOneDraggableBottomSheet {
  GoalOneDraggableBottomSheet._();

  static show(
    BuildContext context, {
    double initialChildSize = 0.4,
    double minChildSize = 0.4,
    double maxChildSize = 0.87,
    bool expand = true,
    bool isScrollControlled: false,
    bool isDismissible: true,
    @required
        Widget Function(BuildContext context, ScrollController scrollController)
            builder,
  }) {
    showModalBottomSheet(
        context: context,
        isScrollControlled: isScrollControlled,
        isDismissible: isDismissible,
        backgroundColor: Colors.transparent,
        builder: (context) => DraggableScrollableSheet(
              initialChildSize: initialChildSize,
              minChildSize: minChildSize,
              maxChildSize: maxChildSize,
              expand: expand,
              builder:
                  (BuildContext context, ScrollController scrollController) {
                return Container(
                    padding: EdgeInsets.only(left: 20, right: 20, top: 0),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20))),
                    child: builder(context, scrollController));
              },
            ));
  }
}
