import 'package:flutter/material.dart';

class BottomIconLeft extends StatelessWidget {
  final IconData iconData;
  final onPressed;

  BottomIconLeft({
    required this.iconData,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: EdgeInsets.all(6),
        margin: EdgeInsets.symmetric(horizontal: 6),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
        ),
        child: Icon(
          iconData,
          color: Colors.black54,
        ),
      ),
    );
  }
}
