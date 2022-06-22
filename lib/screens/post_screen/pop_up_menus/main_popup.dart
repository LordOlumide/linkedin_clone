import 'package:flutter/material.dart';
import 'visual_components/main_popup_list_items.dart';

class MainPopUp extends StatelessWidget {
  const MainPopUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            spreadRadius: 1,
            blurRadius: 1,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Top bar
          Container(
            decoration: BoxDecoration(
              color: Colors.black54,
              borderRadius: BorderRadius.circular(6),
            ),
            margin: EdgeInsets.all(15),
            constraints: BoxConstraints(
              maxHeight: 4,
              maxWidth: 50,
            ),
          ),

          // List body
          // Add a photo
          ListItem(
            onTap: () {},
            leadingIcon: Icons.photo,
            title: 'Add a photo',
          ),
          // Take a video
          ListItem(
            onTap: () {},
            leadingIcon: Icons.photo,
            title: 'Take a video',
          ),
          // Celebrate an occasion
          ListItem(
            onTap: () {},
            leadingIcon: Icons.stars_outlined,
            title: 'Celebrate an occasion',
          ),
          // Add a document
          ListItem(
            onTap: () {},
            leadingIcon: Icons.file_open,
            title: 'Add a document',
          ),
          // Share that you're hiring
          ListItem(
            onTap: () {},
            leadingIcon: Icons.work,
            title: 'Share that you\'re hiring',
          ),
          // Find an expert
          ListItem(
            onTap: () {},
            leadingIcon: Icons.person_pin_rounded,
            title: 'Find an expert',
          ),
          // Create a poll
          ListItem(
            onTap: () {},
            leadingIcon: Icons.bar_chart,
            title: 'Create a poll',
          ),
          // Create an event
          ListItem(
            onTap: () {},
            leadingIcon: Icons.edit_calendar,
            title: 'Create an event',
          ),
        ],
      ),
    );
  }
}
