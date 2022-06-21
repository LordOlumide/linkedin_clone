import 'package:flutter/material.dart';
import 'invitation_card.dart';
import 'package:linkedin_clone/screens/my_network_screen/invitations.dart';

class InvitationsSection extends StatelessWidget {
  const InvitationsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        margin: EdgeInsets.only(top: 8),
        child: Column(
          children: [
            // The Invitations button header
            MaterialButton(
              elevation: 0,
              color: Colors.white,
              height: 50,
              padding: EdgeInsets.all(13),
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Invitations',
                    style: TextStyle(
                      color: Colors.blue[700],
                      fontSize: 16,
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.grey[450],
                    size: 20,
                  ),
                ],
              ),
            ),
            Divider(
              thickness: 0.7,
              height: 1,
            ),

            // The invitations
            for (int i = 0; i < invitations.length; i++)
              InvitationCard(
                inviter_profile_pic: invitations[i]
                ['inviter_profile_pic'],
                inviter_name: invitations[i]['inviter_name'],
                inviter_info: invitations[i]['inviter_info'],
                inviter_location: invitations[i]['inviter_location'],
              ),
          ],
        ),
      );
  }
}
