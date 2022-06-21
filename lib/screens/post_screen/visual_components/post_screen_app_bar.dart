import 'package:flutter/material.dart';

class PostScreenAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(50);

  bool postButtonController = false;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 2,
      shadowColor: Colors.black38,
      backgroundColor: Colors.white,
      titleSpacing: 2,

      // The close button
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: const Icon(
          Icons.close,
          color: Colors.black54,
          size: 28,
        ),
      ),

      // The appbar title
      title: const Text(
        'Share post',
        style: TextStyle(
          fontSize: 21,
          color: Colors.black87,
        ),
      ),

      actions: [
        // The "Post" button
        Container(
          margin: EdgeInsets.all(10),
          child: ElevatedButton(
            style: ButtonStyle(
              elevation: MaterialStateProperty.all<double>(0),
              backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
              padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(5)),
            ),
            onPressed: () {},
            child: Text(
              'Post',
              style: TextStyle(
                color: postButtonController ? Colors.blue : Colors.black26,
                fontSize: 17,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
