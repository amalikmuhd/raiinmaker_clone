import 'package:flutter/material.dart';
import 'package:social_media_profile_screen/components/navigation_drawer_widget.dart';
import 'package:social_media_profile_screen/utilities/constants.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawerWidget(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 1,
        shadowColor: Colors.orangeAccent,
        title: Container(
          width: 80,
          height: 80,
          child: Image.asset(
            kImagePath + 'logo.jpg',
            fit: BoxFit.cover,
          ),
        ),
      ),
      body: Center(child: CircularProgressIndicator()),
    );
  }
}
