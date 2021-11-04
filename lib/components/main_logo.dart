import 'package:flutter/material.dart';
import 'package:social_media_profile_screen/utilities/constants.dart';

class MainLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Center(
        child: Image.asset(
          kImagePath + 'logowithname.jpg',
        ),
      ),
    );
  }
}
