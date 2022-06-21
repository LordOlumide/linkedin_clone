import 'package:flutter/material.dart';
import 'invitations_section.dart';
import 'recommended_for_you.dart';

class MyNetworkBody extends StatelessWidget {

  Widget invitationsSection = InvitationsSection();
  Widget recommendationsSection = Recommendations();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          // "Manage my network" button at the top
          MaterialButton(
            elevation: 1,
            color: Colors.white,
            height: 50,
            padding: EdgeInsets.all(13),
            onPressed: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Manage my network',
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

          // The "Invitaions" section
          invitationsSection,

          // The "Recommendations" section
          recommendationsSection,
        ],
      ),
    );
  }
}
