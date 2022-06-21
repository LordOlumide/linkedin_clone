import 'package:flutter/material.dart';

class PostScreenBody extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // Main Body
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 20),
          child: Column(
            children: [
              // Personal info
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Profile photo
                  const CircleAvatar(
                    radius: 25,
                    foregroundImage: AssetImage('images/profile_pic.jpg'),
                    backgroundColor: Colors.grey,
                  ),
                  const SizedBox(width: 10),

                  // User_name and post_target_audience_button
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // User_name
                      Text(
                        'Olumide Olubosede',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                        ),
                      ),

                      // post_target_audience_button
                      TextButton(
                        style: ButtonStyle(
                          side: MaterialStateProperty.all<BorderSide>(
                              BorderSide(width: 1, color: Colors.black87)),
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Colors.transparent),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20))),
                        ),
                        onPressed: () {},
                        child: Row(
                          children: const [
                            Icon(
                              Icons.location_on,
                              size: 17,
                              color: Colors.black87,
                            ),
                            Text(
                              'Anyone',
                              style: TextStyle(
                                color: Colors.black87,
                              ),
                            ),
                            Icon(
                              Icons.arrow_drop_down,
                              size: 17,
                              color: Colors.black87,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              // Textfield for post
              TextField(
                decoration: InputDecoration(
                  hintText: 'What do you want to talk about?',
                  hintStyle: TextStyle(fontSize: 18),
                  border: InputBorder.none,
                ),
                style: TextStyle(fontSize: 17.5),
                maxLines: 10,
              ),
            ],
          ),
        ),

        // Bottom Section
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // The "Add hashtag" button
            Container(
              margin: EdgeInsets.symmetric(horizontal: 12),
              child: TextButton(
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(EdgeInsets.all(7)),
                ),
                onPressed: () {},
                child: Text(
                  'Add hashtag',
                  style: TextStyle(
                    color: Colors.blue,
                  ),
                ),
              ),
            ),

            // The Bottom Bar
            Container(
              height: 50,
              padding: EdgeInsets.symmetric(horizontal: 7),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Left side icons
                  Row(
                    children: [
                      BottomBarIconRight(
                        iconData: Icons.photo_camera_rounded,
                        onPressed: () {},
                      ),
                      BottomBarIconRight(
                        iconData: Icons.videocam_rounded,
                        onPressed: () {},
                      ),
                      BottomBarIconRight(
                        iconData: Icons.photo,
                        onPressed: () {},
                      ),
                      BottomBarIconRight(
                        iconData: Icons.more_horiz,
                        onPressed: () {},
                      ),
                    ],
                  ),

                  // Right side icon
                  TextButton(
                    onPressed: () {},
                    child: Row(
                      children: [
                        Icon(
                          Icons.chat_bubble_outline,
                          color: Colors.black54,
                          size: 17,
                        ),
                        SizedBox(width: 2),
                        Text(
                          'Anyone',
                          style: TextStyle(
                              color: Colors.black54,
                              fontWeight: FontWeight.w600
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}


class BottomBarIconRight extends StatelessWidget {
  final IconData iconData;
  final onPressed;

  BottomBarIconRight({
    required this.iconData,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: EdgeInsets.all(6),
        margin: EdgeInsets.symmetric(horizontal: 6),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
        ),
        child: Icon(
          iconData,
          color: Colors.black54,
        ),
      ),
    );
  }
}