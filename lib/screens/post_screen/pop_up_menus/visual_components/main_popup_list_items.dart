import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {
  final IconData leadingIcon;
  final String title;
  final onTap;

  ListItem({
    required this.leadingIcon,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 50,
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Row(
          children: [
            // Leading icon
            Icon(
              leadingIcon,
              color: Colors.black54,
            ),
            SizedBox(width: 15),

            // Title
            Text(
              title,
              style: TextStyle(
                color: Colors.black87,
                fontWeight: FontWeight.w500,
                fontSize: 14.2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
