import 'package:flutter/material.dart';
import 'package:social_media_profile_screen/utilities/constants.dart';

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({Key? key}) : super(key: key);

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
