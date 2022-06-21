import 'package:flutter/material.dart';

// components
import 'package:linkedin_clone/general_components/custom_appbar_1.dart';
import 'package:linkedin_clone/general_components/bottom_navigation_bar.dart';
import 'visual_components/invitations_section.dart';

class MyNetworkScreen extends StatelessWidget {
  static const screen_id = 'my_network_screen';

  PreferredSizeWidget appbar = CustomAppBar1();
  Widget navigationBar = CustomNavigationBar(activeScreen: screen_id);
  Widget invitationsSection = InvitationsSection();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: appbar,
      bottomNavigationBar: navigationBar,
      body: Container(
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

            // The 'Invitaions' section
            invitationsSection,
          ],
        ),
      ),
    );
  }
}
