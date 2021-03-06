import 'package:flutter/material.dart';

// components
import 'package:linkedin_clone/general_components/custom_appbar_1.dart';
import 'package:linkedin_clone/general_components/bottom_navigation_bar.dart';
import 'visual_components/my_network_body.dart';

class MyNetworkScreen extends StatelessWidget {
  static const screen_id = 'my_network_screen';

  PreferredSizeWidget appbar = CustomAppBar1();
  Widget navigationBar = CustomNavigationBar(activeScreen: screen_id);
  Widget myNetworkBody = MyNetworkBody();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: appbar,
      bottomNavigationBar: navigationBar,
      body: myNetworkBody,
    );
  }
}
