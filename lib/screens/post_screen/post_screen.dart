import 'package:flutter/material.dart';
import 'visual_components/post_screen_app_bar.dart';
import 'visual_components/post_screen_body.dart';

class PostScreen extends StatelessWidget {
  static const screen_id = 'post_screen';

  // Initializing components
  final appBar = PostScreenAppBar();
  final body = PostScreenBody();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appBar,
      body: body,
    );
  }
}

