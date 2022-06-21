import 'package:flutter/material.dart';

class InvitationCard extends StatelessWidget {
  final String inviter_name;
  final String inviter_profile_pic;
  final String inviter_info;
  final String inviter_location;

  InvitationCard({
    required this.inviter_profile_pic,
    required this.inviter_name,
    required this.inviter_info,
    required this.inviter_location,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(13),
      child: Row(
        children: [
          // Inviter Avatar
          CircleAvatar(
            radius: 35,
            foregroundImage: AssetImage(
              inviter_profile_pic,
            ),
          ),

          // Invitation details
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Inviter name
                Padding(
                  padding:
                      const EdgeInsets.fromLTRB(10, 2, 0, 2),
                  child: Text(
                    inviter_name,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(),
                  ),
                ),

                // Inviter info
                Padding(
                  padding:
                      const EdgeInsets.fromLTRB(10, 2, 0, 2),
                  child: Text(
                    inviter_info.toUpperCase(),
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Colors.grey[500],
                      fontSize: 15,
                    ),
                  ),
                ),

                // Inviter location
                Padding(
                  padding:
                      const EdgeInsets.fromLTRB(10, 2, 0, 2),
                  child: Row(
                    children: [
                      Icon(
                        Icons.location_city_sharp,
                        size: 16,
                        color: Colors.grey[500],
                      ),
                      SizedBox(width: 3),
                      Text(
                        inviter_location,
                        style: TextStyle(
                          overflow: TextOverflow.ellipsis,
                          color: Colors.grey[500],
                          fontSize: 13,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          // Accept or decline iconButtons
          Row(
            children: [
              // Decline Button
              GestureDetector(
                onTap: () {},
                child: Container(
                  margin: EdgeInsets.all(2),
                  height: 41,
                  width: 41,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(width: 1, color: Colors.grey),
                  ),
                  child: Icon(
                    Icons.cancel_outlined,
                    size: 30,
                    color: Colors.grey,
                  ),
                ),
              ),

              // Accept button
              GestureDetector(
                onTap: () {},
                child: Container(
                  margin: EdgeInsets.all(2),
                  height: 41,
                  width: 41,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(width: 1, color: Colors.blue),
                  ),
                  child: Icon(
                    Icons.check,
                    color: Colors.blue,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
