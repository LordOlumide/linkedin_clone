import 'package:flutter/material.dart';
import 'package:linkedin_clone/general_components/bottom_navigation_bar.dart';

class HomeScreen extends StatelessWidget {
  static const screen_id = 'home_screen';

  Widget navigationBar = CustomNavigationBar();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leadingWidth: 70,
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 6),
          child: CircleAvatar(
            radius: 2.5,
            foregroundImage: AssetImage('images/profile_pic.jpg'),
          ),
        ),
        titleSpacing: 0,
        toolbarHeight: 50,
        title: Container(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 7),
          decoration: BoxDecoration(color: Colors.blueGrey[50],
            borderRadius: BorderRadius.circular(6),
          ),
          child: Row(children: [
            Icon(
              Icons.search,
              size: 21,
              color: Colors.grey[700],
            ),
            Text(
              'Search',
              style: TextStyle(
                color: Colors.black,
                fontSize: 14,
              ),
            ),
          ]),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.message,
              color: Colors.grey[700],
            ),
          ),
        ],
      ),
      bottomNavigationBar: navigationBar,
    );
  }
}
