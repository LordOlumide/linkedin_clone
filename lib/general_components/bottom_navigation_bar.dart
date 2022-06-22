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
  final String activeScreen;

  CustomNavigationBar({required this.activeScreen});

  @override
  State<CustomNavigationBar> createState() => _CustomNavigationBarState();
}

class _CustomNavigationBarState extends State<CustomNavigationBar> {
  final activeIconColor = Colors.black;
  final inactiveIconColor = Colors.grey[500];

  Route _postScreenPageBuilder() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => PostScreen(),
      transitionDuration: const Duration(milliseconds: 500),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(0.0, 1.0);
        const end = Offset(0.0, 0.0);

        final tween = Tween(begin: begin, end: end);
        final offsetAnimation = animation.drive(tween);

        return SlideTransition(
          position: offsetAnimation,
          child: child,
        );
      },
    );
  }

  Route _noAnimationBuilder({required Widget page}) {
    return PageRouteBuilder(
      pageBuilder:
          (context, animation, secondaryAnimation) => page,
      transitionDuration: const  Duration(milliseconds: 200),
      reverseTransitionDuration: const Duration(milliseconds: 200),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return child;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    // The home screen must be directly underneath every other screen
    // For other screens, if we're on home screen, push it.
    // Else, pushReplacement it.

    return Container(
      height: 50,
      padding: const EdgeInsets.all(0),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(top: BorderSide(width: 0.7, color: Colors.grey[400]!)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          // Home button
          NavigationBarItem(
            icon: Icon(
              Icons.home,
              color: widget.activeScreen == HomeScreen.screen_id
                  ? activeIconColor : inactiveIconColor,
            ),
            title: 'Home',
            onPressed: () {
              if (ModalRoute.of(context)!.settings.name !=
                  HomeScreen.screen_id) {
                Navigator.of(context).pop();
              }
            },
          ),

          // My Network button
          NavigationBarItem(
            icon: Icon(
              Icons.people,
              color: widget.activeScreen == MyNetworkScreen.screen_id
                  ? activeIconColor : inactiveIconColor,
            ),
            title: 'My Network',
            onPressed: () {
              if (ModalRoute.of(context)!.settings.name ==
                  HomeScreen.screen_id) {
                Navigator.of(context).push(
                    _noAnimationBuilder(page: MyNetworkScreen()));
              } else if (ModalRoute.of(context)!.settings.name ==
                  MyNetworkScreen.screen_id) {
                // do nothing
              } else {
                Navigator.of(context).pushReplacement(
                    _noAnimationBuilder(page: MyNetworkScreen()));
              }
            },
          ),

          // Post button
          NavigationBarItem(
            icon: Icon(
              Icons.add_box,
              color: widget.activeScreen == PostScreen.screen_id
                  ? activeIconColor : inactiveIconColor,
            ),
            title: 'Post',
            onPressed: () {
              Navigator.of(context).push(_postScreenPageBuilder());
            },
          ),

          // Notifications button
          NavigationBarItem(
            icon: Icon(
              Icons.notifications,
              color: widget.activeScreen == NotificationsScreen.screen_id
                  ? activeIconColor : inactiveIconColor,
            ),
            title: 'Notifications',
            onPressed: () {
              if (ModalRoute.of(context)!.settings.name ==
                  HomeScreen.screen_id) {
                Navigator.of(context).push(
                    _noAnimationBuilder(page: NotificationsScreen()));
              } else if (ModalRoute.of(context)!.settings.name ==
                  NotificationsScreen.screen_id) {
                // do nothing
              } else {
                Navigator.of(context).pushReplacement(
                    _noAnimationBuilder(page: NotificationsScreen()));
              }
            },
          ),

          // Jobs button
          NavigationBarItem(
            icon: Icon(
              Icons.work,
              color: widget.activeScreen == JobsScreen.screen_id
                  ? activeIconColor : inactiveIconColor,
            ),
            title: 'Jobs',
            onPressed: () {
              if (ModalRoute.of(context)!.settings.name ==
                  HomeScreen.screen_id) {
                Navigator.of(context).push(
                    _noAnimationBuilder(page: JobsScreen())
                );
              } else if (ModalRoute.of(context)!.settings.name ==
                  JobsScreen.screen_id) {
                // do nothing
              } else {
                Navigator.of(context).pushReplacement(
                    _noAnimationBuilder(page: JobsScreen())
                );
              }
            },
          ),
        ],
      ),
    );
  }
}
