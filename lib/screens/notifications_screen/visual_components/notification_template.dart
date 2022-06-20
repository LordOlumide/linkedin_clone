import 'package:flutter/material.dart';

class NotificationTile extends StatelessWidget {
  final String profile_pic;
  final String notification_string;
  final actionButton;
  final String timeSinceNotified;

  NotificationTile({
    required this.profile_pic,
    required this.notification_string,
    this.actionButton,
    required this.timeSinceNotified,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 1),
      color: Colors.white,
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.fromLTRB(20, 10, 0, 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Profile picture
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundColor: Colors.grey,
              foregroundImage: AssetImage(profile_pic),
            ),
          ),

          // Mid section
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Notification text
                Padding(
                  padding: const EdgeInsets.only(top: 8, bottom: 3),
                  child: Text(
                    notification_string,
                    style: TextStyle(),
                  ),
                ),

                // actions, if any.
                actionButton ?? SizedBox(),
              ],
            ),
          ),

          // End section
          Column(
            children: [
              // Time since notified
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text(
                  timeSinceNotified,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Colors.grey[450],
                    fontSize: 12,
                  ),
                ),
              ),

              // Menu iconButton
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.more_vert,
                  size: 20,
                  color: Colors.grey[450],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
