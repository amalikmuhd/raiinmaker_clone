import 'package:flutter/material.dart';
import 'package:social_media_profile_screen/components/navigation_drawer_widget.dart';

class HavestScreen extends StatelessWidget {
  const HavestScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawerWidget(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 1,
        shadowColor: Colors.orangeAccent,
      ),
      body: Container(
        color: Colors.orangeAccent,
      ),
    );
  }
}
