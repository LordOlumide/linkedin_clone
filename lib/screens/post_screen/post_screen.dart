import 'package:flutter/material.dart';

class PostScreen extends StatelessWidget {
  static const screen_id = 'post_screen';

  PostScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Text('Post screen'),
      ),
    );
  }
}