import 'package:flutter/material.dart';

// components
import 'package:linkedin_clone/general_components/custom_appbar_1.dart';
import 'package:linkedin_clone/general_components/bottom_navigation_bar.dart';
import 'package:linkedin_clone/screens/home_screen/visual_components/posts.dart';

class HomeScreen extends StatelessWidget {
  static const screen_id = 'home_screen';

  PreferredSizeWidget appbar = CustomAppBar1();
  Widget navigationBar = CustomNavigationBar(activeScreen: screen_id);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: appbar,
      bottomNavigationBar: navigationBar,
      // body: ListView.builder(
      //   itemCount: posts.length,
      //   itemBuilder: (context, index) {
      //     return
      //   },
      // ),
      body: Column(
        children: [
          Container(
            child: Column(
              children: [
                // Top level

                // Post Text

                // Post Image
                Image.asset(posts[0]['post_image']),
                // Reactions bar

                // Actions section

              ],
            )
          )
        ],
      ),
    );
  }
}
