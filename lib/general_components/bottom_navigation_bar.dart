import 'package:flutter/material.dart';

// components
import 'navigation_bar_item.dart';
import 'bottom_navigation_bar_active_indicator.dart';

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
          Expanded(
            child: Column(
              children: [
                // Top Indicator
                widget.activeScreen == HomeScreen.screen_id
                    ? ActiveIndicatorBar() : SizedBox(height: 2.6),

                // Button
                NavigationBarItem(
                  icon: Icons.home,
                  title: 'Home',
                  isActive: widget.activeScreen == HomeScreen.screen_id
                      ? true : false,
                  onPressed: () {
                    if (ModalRoute.of(context)!.settings.name !=
                        HomeScreen.screen_id) {
                      Navigator.of(context).pop();
                    }
                  },
                ),
              ],
            ),
          ),

          // My Network button
          Expanded(
            child: Column(
              children: [
                // Top Indicator
                widget.activeScreen == MyNetworkScreen.screen_id
                    ? ActiveIndicatorBar() : SizedBox(height: 2.6),

                // Button
                NavigationBarItem(
                  icon: Icons.people,
                  title: 'My Network',
                  isActive: widget.activeScreen == MyNetworkScreen.screen_id
                      ? true : false,
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
              ],
            ),
          ),

          // Post button
          Expanded(
            child: Column(
              children: [
                // Top Indicator
                widget.activeScreen == PostScreen.screen_id
                    ? ActiveIndicatorBar() : SizedBox(height: 2.6),

                // Button
                NavigationBarItem(
                  icon: Icons.add_box,
                  title: 'Post',
                  isActive: widget.activeScreen == PostScreen.screen_id
                      ? true : false,
                  onPressed: () {
                    Navigator.of(context).push(_postScreenPageBuilder());
                  },
                ),
              ],
            ),
          ),

          // Notifications button
          Expanded(
            child: Column(
              children: [
                // Top Indicator
                widget.activeScreen == NotificationsScreen.screen_id
                    ? ActiveIndicatorBar() : SizedBox(height: 2.6),

                // Button
                NavigationBarItem(
                  icon: Icons.notifications,
                  title: 'Notifications',
                  isActive: widget.activeScreen == NotificationsScreen.screen_id
                      ? true : false,
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
              ],
            ),
          ),

          // Jobs button
          Expanded(
            child: Column(
              children: [
                // Top Indicator
                widget.activeScreen == JobsScreen.screen_id
                    ? ActiveIndicatorBar() : SizedBox(height: 2.6),

                // Button
                NavigationBarItem(
                  icon: Icons.work,
                  title: 'Jobs',
                  isActive: widget.activeScreen == JobsScreen.screen_id
                      ? true : false,
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
          ),
        ],
      ),
    );
  }
}
