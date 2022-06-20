import 'package:flutter/material.dart';
import 'package:linkedin_clone/screens/home_screen/home_screen.dart';

class LoadingScreen extends StatefulWidget {
  static const screen_id = 'loading_screen';

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {

  loadAndPushToHomeScreen() async {
    // Simulating a delay for now
    await Future.delayed(Duration(seconds: 3));
    Navigator.pushReplacementNamed(context, HomeScreen.screen_id);
  }

  @override
  void initState() {
    super.initState();
    loadAndPushToHomeScreen();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(child: Image.asset('images/introBackground.webp')),
    );
  }
}
