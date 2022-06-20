import 'package:flutter/material.dart';
import 'post_reaction_button.dart';
import 'package:linkedin_clone/screens/home_screen/posts.dart';

class Post extends StatelessWidget {
  final int index;

  Post({required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      margin: EdgeInsets.fromLTRB(0, 8, 0, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
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
                            AssetImage(posts[index]['profile_picture']),
                      ),
                    ),

                    // User and post info
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // user name
                        Text(
                          posts[index]['username'],
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: 2), // Padding
                        // user info
                        Text(
                          posts[index]['user_info'],
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(height: 2), // Padding
                        // Time since post
                        Text(
                          posts[index]['time_since_post'],
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
                  padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
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
              posts[index]['post_text'],
              style: TextStyle(
                fontSize: 14,
              ),
            ),
          ),

          // Post Image
          Container(
            height: 200,
            child: Center(
              child: Image.asset(
                posts[index]['post_image'],
                fit: BoxFit.cover,
              ),
            ),
          ),

          // Reactions bar
          Container(
            child: Row(
              children: [
                // Emoji reactions and reaction number on a button
                Expanded(
                  child: MaterialButton(
                    onPressed: () {},
                    child: Row(
                      children: [
                        // The emojis

                        // like emoji
                        CircleAvatar(
                          radius: 7,
                          child: Icon(
                            Icons.thumb_up,
                            color: Colors.lightBlue[50],
                            size: 8,
                          ),
                        ),
                        SizedBox(width: 2),

                        // Love emoji
                        CircleAvatar(
                          backgroundColor: Colors.deepOrange,
                          radius: 7,
                          child: Icon(
                            Icons.favorite,
                            color: Colors.deepOrange[50],
                            size: 8,
                          ),
                        ),
                        SizedBox(width: 5),

                        // The number of reactions
                        Text(
                          '${posts[index]['reaction_count']}',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey[450],
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                // The number of comments on a button
                Expanded(
                  child: MaterialButton(
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          '${posts[index]['comment_count']} comments',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey[450],
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),

          // Divider
          Container(
            height: 1,
            margin: EdgeInsets.symmetric(vertical: 0, horizontal: 15),
            color: Colors.grey[300],
          ),

          // Actions section
          Container(
            height: 50,
            child: Row(
              children: [
                // Like Button
                PostReactionButton(
                  icon: Icons.thumb_up_outlined,
                  title: 'Like',
                  onPressed: () {},
                ),

                // Comment Button
                PostReactionButton(
                  icon: Icons.comment,
                  title: 'Comment',
                  onPressed: () {},
                ),

                // Share Button
                PostReactionButton(
                  icon: Icons.share,
                  title: 'Share',
                  onPressed: () {},
                ),

                // Send Button
                PostReactionButton(
                  icon: Icons.send,
                  title: 'Share',
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
