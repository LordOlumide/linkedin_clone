import 'package:flutter/material.dart';
import 'bottomIconLeft.dart';
import 'package:linkedin_clone/screens/'
    'post_screen/pop_up_menus/main_popup.dart';

class PostScreenBody extends StatefulWidget {

  @override
  State<PostScreenBody> createState() => _PostScreenBodyState();
}

class _PostScreenBodyState extends State<PostScreenBody> {

  void showMainBottomSheet() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      barrierColor: Colors.transparent,
      backgroundColor: Colors.transparent,
      builder: (context) {
        return SingleChildScrollView(
          child: MainPopUp(),
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        );
      },
    );
  }

  @override
  void initState() {
    // This implementation works.
    Future.delayed(Duration(milliseconds: 120))
        .then((context) => showMainBottomSheet());

    // // This implementation also works but its too fast.
    // WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
    //   showMainBottomSheet();
    // });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // Main Body
        Expanded(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
            child: ListView(
              children: [
                // Personal info
                const SizedBox(height: 10), // Padding
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
                  maxLines: null,
                  // expands: true, // causes error. Should eventuallu use.
                ),
              ],
            ),
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
                      BottomIconLeft(
                        iconData: Icons.photo_camera_rounded,
                        onPressed: () {},
                      ),
                      BottomIconLeft(
                        iconData: Icons.videocam_rounded,
                        onPressed: () {},
                      ),
                      BottomIconLeft(
                        iconData: Icons.photo,
                        onPressed: () {},
                      ),
                      BottomIconLeft(
                        iconData: Icons.more_horiz,
                        onPressed: () {
                          showMainBottomSheet();
                        },
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