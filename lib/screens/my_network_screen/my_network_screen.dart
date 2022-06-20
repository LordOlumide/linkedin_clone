import 'package:flutter/material.dart';

class MyNetworkScreen extends StatelessWidget {
  static const screen_id = 'my_network_screen';

  const MyNetworkScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Text(
              'My Network screen'
          )
      ),
    );
  }
}