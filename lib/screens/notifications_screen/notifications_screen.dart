import 'package:flutter/material.dart';

// components
import 'package:linkedin_clone/general_components/custom_appbar_1.dart';
import 'package:linkedin_clone/general_components/bottom_navigation_bar.dart';
import 'visual_components/notification_template.dart';
import 'notifications.dart';


class NotificationsScreen extends StatelessWidget {
  static const screen_id = 'notifications_screen';

  NotificationsScreen({Key? key}) : super(key: key);

  PreferredSizeWidget appbar = CustomAppBar1();
  Widget navigationBar = CustomNavigationBar(activeScreen: screen_id);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: appbar,
      bottomNavigationBar: navigationBar,
      body: ListView.builder(
        itemCount: notifications.length,
        itemBuilder: (context, index) {
          return NotificationTile(
            profile_pic: notifications[index]['profile_pic'],
            notification_string: notifications[index]['notification_string'],
            actionButton: notifications[index]['action'],
            timeSinceNotified: notifications[index]['time_since_notified'],
          );
        },
      ),
    );
  }
}