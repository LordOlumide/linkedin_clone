import 'package:flutter/material.dart';

// Screens
import 'package:linkedin_clone/screens/home_screen/home_screen.dart';
import 'package:linkedin_clone/screens/jobs_screen/jobs_screen.dart';
import 'package:linkedin_clone/screens/messaging_screen/messaging_screen.dart';
import 'package:linkedin_clone/screens/post_screen/post_screen.dart';
import 'package:linkedin_clone/screens/my_network_screen/my_network_screen.dart';
import 'package:linkedin_clone/screens/notifications_screen/notifications_screen.dart';
import 'package:linkedin_clone/screens/profile_screen/profile_screen.dart';
import 'screens/loading_screen.dart';
import 'package:linkedin_clone/screens/search_screen.dart';

void main() {
  runApp(LinkedInClone());
}

class LinkedInClone extends StatelessWidget {
  const LinkedInClone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: LoadingScreen.screen_id,
      routes: {
        LoadingScreen.screen_id: (context) => LoadingScreen(),
        HomeScreen.screen_id: (context) => HomeScreen(),
        JobsScreen.screen_id: (context) => JobsScreen(),
        MessagingScreen.screen_id: (context) => MessagingScreen(),
        MyNetworkScreen.screen_id: (context) => MyNetworkScreen(),
        NotificationsScreen.screen_id: (context) => NotificationsScreen(),
        PostScreen.screen_id: (context) => PostScreen(),
        ProfileScreen.screen_id: (context) => ProfileScreen(),
        SearchScreen.screen_id: (context) => SearchScreen(),
      },
    );
  }
}
