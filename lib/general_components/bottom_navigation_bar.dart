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
    // The home screen must be directly underneath every other screen
    // For other screens, if we're on home screen, push it.
    // Else, pushReplacement it.

    return Container(
      height: 50,
      padding: EdgeInsets.all(0),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(top: BorderSide(width: 1, color: Colors.grey[300]!)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          NavigationBarItem(
            icon: Icon(Icons.home),
            title: 'Home',
            onPressed: () {
              if (ModalRoute.of(context)!.settings.name !=
                  HomeScreen.screen_id) {
                Navigator.pop(context);
              }
            },
          ),
          NavigationBarItem(
            icon: Icon(Icons.people),
            title: 'My Network',
            onPressed: () {
              if (ModalRoute.of(context)!.settings.name ==
                  HomeScreen.screen_id) {
                Navigator.pushNamed(context, MyNetworkScreen.screen_id);
              } else if (ModalRoute.of(context)!.settings.name ==
                  MyNetworkScreen.screen_id) {
                // do nothing
              } else {
                Navigator.pushReplacementNamed(
                    context, MyNetworkScreen.screen_id);
              }
            },
          ),
          NavigationBarItem(
            icon: Icon(Icons.add_box),
            title: 'Post',
            onPressed: () {
              Navigator.pushNamed(context, PostScreen.screen_id);
            },
          ),
          NavigationBarItem(
            icon: Icon(Icons.notifications),
            title: 'Notifications',
            onPressed: () {
              if (ModalRoute.of(context)!.settings.name ==
                  HomeScreen.screen_id) {
                Navigator.pushNamed(context, NotificationsScreen.screen_id);
              } else if (ModalRoute.of(context)!.settings.name ==
                  NotificationsScreen.screen_id) {
                // do nothing
              } else {
                Navigator.pushReplacementNamed(
                    context, NotificationsScreen.screen_id);
              }
            },
          ),
          NavigationBarItem(
            icon: Icon(Icons.work),
            title: 'Jobs',
            onPressed: () {
              if (ModalRoute.of(context)!.settings.name ==
                  HomeScreen.screen_id) {
                Navigator.pushNamed(context, JobsScreen.screen_id);
              } else if (ModalRoute.of(context)!.settings.name ==
                  JobsScreen.screen_id) {
                // do nothing
              } else {
                Navigator.pushReplacementNamed(
                    context, JobsScreen.screen_id);
              }
            },
          ),
        ],
      ),
    );
  }
}
