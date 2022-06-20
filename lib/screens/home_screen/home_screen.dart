import 'package:flutter/material.dart';

// components
import 'package:linkedin_clone/general_components/custom_appbar_1.dart';
import 'package:linkedin_clone/general_components/bottom_navigation_bar.dart';

class HomeScreen extends StatelessWidget {
  static const screen_id = 'home_screen';

  Widget navigationBar = CustomNavigationBar();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: CustomAppBar(context),
      bottomNavigationBar: navigationBar,
    );
  }
}
