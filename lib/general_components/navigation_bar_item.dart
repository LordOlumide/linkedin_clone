import 'package:flutter/material.dart';

class NavigationBarItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final bool isActive;
  final onPressed;

  NavigationBarItem({
    required this.icon,
    required this.title,
    required this.onPressed,
    required this.isActive,
  });

  final activeIconColor = Colors.black;
  final inactiveIconColor = Colors.grey[500];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 2),
        child: MaterialButton(
          onPressed: onPressed,
          elevation: 0,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
          padding: EdgeInsets.all(0),
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                color: isActive == true
                    ? activeIconColor : inactiveIconColor,
              ),
              Text(
                title,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 10,
                  color: isActive == true
                    ? activeIconColor : inactiveIconColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
