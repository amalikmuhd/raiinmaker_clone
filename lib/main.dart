import 'package:flutter/material.dart';
import 'package:social_media_profile_screen/screens/login_screen.dart';
import 'package:social_media_profile_screen/screens/recovery_screen.dart';
import 'package:social_media_profile_screen/utilities/routes.dart';

const mockupHeight = 812;
const mockupWidth = 375;
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // debugShowCheckedModeBanner: false,
      initialRoute: LoginScreen.routeName,
      routes: routes,
    );
  }
}
