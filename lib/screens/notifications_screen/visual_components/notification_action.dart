import 'package:flutter/material.dart';

class NotificationActionButton extends StatelessWidget {
  final String title;
  final onPressed;

  NotificationActionButton({
    required this.title,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: RoundedRectangleBorder(
        side: BorderSide(
          width: 1,
          color: Colors.blue[800]!,
        ),
        borderRadius: BorderRadius.circular(23),
      ),
      onPressed: onPressed,
      child: Text(
        title,
        style: TextStyle(
          fontSize: 15,
          color: Colors.blue[800],
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}