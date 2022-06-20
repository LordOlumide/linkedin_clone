import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  static const screen_id = 'profile_screen';

  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Text(
              'Profile screen'
          )
      ),
    );
  }
}