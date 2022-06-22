import 'package:flutter/material.dart';

class ActiveIndicatorBar extends StatelessWidget {
  const ActiveIndicatorBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'bottom_navigation_active_indicator',
      child: Container(
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(1),
        ),
        margin: EdgeInsets.only(top: 0.6, right: 3.5, left: 3.5),
        constraints: BoxConstraints(
          maxHeight: 2,
          maxWidth: 90,
        ),
      ),
    );
  }
}
