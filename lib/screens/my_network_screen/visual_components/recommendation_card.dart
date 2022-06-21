import 'package:flutter/material.dart';

class RecommendationCard extends StatelessWidget {
  final String background_pic;
  final String profile_pic;
  final String username;
  final String user_info;

  RecommendationCard({
    required this.background_pic,
    required this.profile_pic,
    required this.username,
    required this.user_info,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 6),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(9),
        border: Border.all(
          width: 2,
          color: Colors.grey[200]!,
        ),
      ),
      child: Stack(
        children: [
          // TODO: Fix the image alignment.
          // The Background image
          Image.asset(
            background_pic,
            height: 92,
            width: double.infinity,
            fit: BoxFit.cover,
          ),

          // The foreground
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // TODO: Extract this circular button
              // The cancel button at the top right
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      margin: EdgeInsets.all(4),
                      height: 25,
                      width: 25,
                      decoration: BoxDecoration(
                        color: Colors.black38,
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(width: 1, color: Colors.black12),
                      ),
                      child: Icon(
                        Icons.close,
                        size: 19,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),

              // The mid section
              Padding(
                padding: EdgeInsets.all(14),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    // Profile picture
                    CircleAvatar(
                      radius: 43,
                      backgroundColor: Colors.black38,
                      foregroundImage: AssetImage(
                        profile_pic,
                      ),
                    ),

                    // Follow Button
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        margin: EdgeInsets.all(2),
                        padding: EdgeInsets.symmetric(vertical: 4, horizontal: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(width: 1, color: Colors.blue),
                        ),
                        child: Text(
                          'Follow',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                            color: Colors.blue,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              // The bottom section
              Padding(
                padding: EdgeInsets.fromLTRB(14, 0, 14, 14),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // User Name
                    Text(
                      username,
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                        fontSize: 17,
                      ),
                    ),

                    // User Info
                    Text(
                      user_info,
                      style: TextStyle(
                        color: Colors.black54,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
