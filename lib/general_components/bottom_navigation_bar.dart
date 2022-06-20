import 'package:flutter/material.dart';
import 'navigation_bar_item.dart';

class CustomNavigationBar extends StatefulWidget {
  const CustomNavigationBar({Key? key}) : super(key: key);

  @override
  State<CustomNavigationBar> createState() => _CustomNavigationBarState();
}

class _CustomNavigationBarState extends State<CustomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      padding: EdgeInsets.all(0),
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          NavigationBarItem(
            icon: Icon(Icons.home),
            title: 'Home',
            onPressed: () {},
          ),
          NavigationBarItem(
            icon: Icon(Icons.people),
            title: 'My Network',
            onPressed: () {},
          ),
          NavigationBarItem(
            icon: Icon(Icons.add_box),
            title: 'Post',
            onPressed: () {},
          ),
          NavigationBarItem(
            icon: Icon(Icons.notifications),
            title: 'Notifications',
            onPressed: () {},
          ),
          NavigationBarItem(
            icon: Icon(Icons.work),
            title: 'Jobs',
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
