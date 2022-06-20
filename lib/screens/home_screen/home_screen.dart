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
              color: Colors.white,
              margin: EdgeInsets.fromLTRB(0, 8, 0, 0),
              child: Column(
                children: [
                  // Title section of post
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Container for the left side of the title section
                      Container(
                        padding: EdgeInsets.fromLTRB(12, 12, 12, 0),
                        child: Row(
                          children: [
                            // Profile picture
                            Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: CircleAvatar(
                                radius: 24,
                                backgroundColor: Colors.grey,
                                foregroundImage:
                                    AssetImage(posts[0]['profile_picture']),
                              ),
                            ),

                            // User and post info
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // user name
                                Text(
                                  posts[0]['username'],
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(height: 2), // Padding
                                // user info
                                Text(
                                  posts[0]['user_info'],
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.grey,
                                  ),
                                ),
                                SizedBox(height: 2), // Padding
                                // Time since post
                                Text(
                                  posts[0]['time_since_post'],
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),

                      // Follow button. Right side of title section.
                      TextButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          padding:
                              MaterialStateProperty.all<EdgeInsetsGeometry>(
                                  EdgeInsets.all(12)),
                        ),
                        child: Row(
                          children: [
                            Icon(
                              Icons.add,
                              size: 19,
                              color: Colors.blue[800],
                            ),
                            Text(
                              'Follow',
                              style: TextStyle(
                                color: Colors.blue[800],
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                  // Post Text
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text(
                      posts[0]['post_text'],
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ),

                  // Post Image
                  Container(
                    child: Image.asset(posts[0]['post_image']),
                  ),
                  // Reactions bar

                  // Actions section
                ],
              ))
        ],
      ),
    );
  }
}
