import 'package:flutter/material.dart';

// components
import 'package:linkedin_clone/general_components/custom_appbar_2.dart';
import 'package:linkedin_clone/general_components/bottom_navigation_bar.dart';

class JobsScreen extends StatelessWidget {
  static const screen_id = 'jobs_screen';

  PreferredSizeWidget appbar = CustomAppBar2();
  Widget navigationBar = CustomNavigationBar(activeScreen: screen_id);

  JobsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: appbar,
      body: Center(
        child: Text('Jobs screen'),
      ),
      bottomNavigationBar: navigationBar,
    );
  }
}