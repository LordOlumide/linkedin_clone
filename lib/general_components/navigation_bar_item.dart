import 'package:flutter/material.dart';

class NavigationBarItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final bool isActive;
  final VoidCallback onPressed;
  final Color activeIconColor;
  final Color inactiveIconColor;

  const NavigationBarItem({
    super.key,
    required this.icon,
    required this.title,
    required this.onPressed,
    required this.isActive,
    this.activeIconColor = Colors.black,
    this.inactiveIconColor = Colors.grey,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 2),
        child: MaterialButton(
          onPressed: onPressed,
          elevation: 0,
          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
          padding: const EdgeInsets.all(0),
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                color: isActive == true ? activeIconColor : inactiveIconColor,
              ),
              Text(
                title,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 10,
                  color: isActive == true ? activeIconColor : inactiveIconColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
