import 'package:flutter/material.dart';
import 'package:social_media_profile_screen/screens/maintabbar_screen/maintabbar_screen.dart';
import 'package:social_media_profile_screen/utilities/constants.dart';

class LoadingScreenTwo extends StatefulWidget {
  static final String routeName = "loading_screen_two";

  @override
  State<LoadingScreenTwo> createState() => _LoadingScreenTwoState();
}

class _LoadingScreenTwoState extends State<LoadingScreenTwo> {
  @override
  void initState() {
    super.initState();
    goToNextScreen();
  }

  void goToNextScreen() async {
    await Future.delayed(Duration(seconds: 5), () {
      Navigator.pushNamed(context, MainTabBarScreen.routeName);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Image.asset(
              kImagePath + 'loading.jpg',
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
