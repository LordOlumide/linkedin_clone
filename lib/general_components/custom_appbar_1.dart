import 'package:flutter/material.dart';
import 'package:linkedin_clone/screens/messaging_screen/messaging_screen.dart';
import 'package:linkedin_clone/screens/search_screen/search_screen.dart';
import 'package:linkedin_clone/screens/profile_screen/profile_screen.dart';

class CustomAppBar1 extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar1({Key? key}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(50);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      leadingWidth: 70,

      // This is the User avatar
      leading: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, ProfileScreen.screen_id);
        },
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 6),
          child: CircleAvatar(
            radius: 2.5,
            foregroundImage: AssetImage('images/profile_pic.jpg'),
          ),
        ),
      ),
      titleSpacing: 0,
      toolbarHeight: 50,

      // This is the search bar container
      title: InkWell(
        onTap: () {
          Navigator.pushNamed(context, SearchScreen.screen_id);
        },
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 7),
          decoration: BoxDecoration(
            color: Colors.blueGrey[50],
            borderRadius: BorderRadius.circular(6),
          ),
          child: Row(children: [
            Icon(
              Icons.search,
              size: 21,
              color: Colors.grey[700],
            ),
            const Text(
              'Search',
              style: TextStyle(
                color: Colors.black,
                fontSize: 14,
              ),
            ),
          ]),
        ),
      ),

      // This contains the message iconButton
      actions: [
        IconButton(
          onPressed: () {
            Navigator.pushNamed(context, MessagingScreen.screen_id);
          },
          icon: Icon(
            Icons.message,
            color: Colors.grey[700],
          ),
        ),
      ],
    );
  }
}

