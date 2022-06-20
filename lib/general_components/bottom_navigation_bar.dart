import 'package:flutter/material.dart';

// components
import 'navigation_bar_item.dart';

// screens
import 'package:linkedin_clone/screens/home_screen/home_screen.dart';
import 'package:linkedin_clone/screens/post_screen/post_screen.dart';
import 'package:linkedin_clone/screens/jobs_screen/jobs_screen.dart';
import 'package:linkedin_clone/screens/my_network_screen/'
    'my_network_screen.dart';
import 'package:linkedin_clone/screens/notifications_screen/'
    'notifications_screen.dart';

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
        border: Border(
          top: BorderSide(width: 1, color: Colors.grey[300]!)
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          NavigationBarItem(
            icon: Icon(Icons.home),
            title: 'Home',
            onPressed: () {
              Navigator.pushReplacementNamed(context, HomeScreen.screen_id);
            },
          ),
          NavigationBarItem(
            icon: Icon(Icons.people),
            title: 'My Network',
            onPressed: () {
              Navigator.pushReplacementNamed(
                  context, MyNetworkScreen.screen_id);
            },
          ),
          NavigationBarItem(
            icon: Icon(Icons.add_box),
            title: 'Post',
            onPressed: () {
              Navigator.pushReplacementNamed(context, PostScreen.screen_id);
            },
          ),
          NavigationBarItem(
            icon: Icon(Icons.notifications),
            title: 'Notifications',
            onPressed: () {
              Navigator.pushReplacementNamed(
                  context, NotificationsScreen.screen_id);
            },
          ),
          NavigationBarItem(
            icon: Icon(Icons.work),
            title: 'Jobs',
            onPressed: () {
              Navigator.pushReplacementNamed(context, JobsScreen.screen_id);
            },
          ),
        ],
      ),
    );
  }
}
