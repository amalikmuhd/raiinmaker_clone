import 'package:flutter/material.dart';
import 'package:social_media_profile_screen/components/checkbox.dart';
import 'package:social_media_profile_screen/components/default_button.dart';
import 'package:social_media_profile_screen/components/main_logo.dart';
import 'package:social_media_profile_screen/components/recovery_button.dart';
import 'package:social_media_profile_screen/screens/recovery_screen.dart';

class LoginScreen extends StatefulWidget {
  static final String routeName = "login_screen";
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  double padding = 15;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(child: MainLogo()),
          Expanded(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              CheckBoxWidget(),
              SizedBox(height: padding),
              DefaultButton(
                title: 'Create New Account',
                onPressed: () {},
              ),
              SizedBox(height: padding),
              RecoveryButton(
                title: 'Recovery Account',
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => RecoveryScreen()));
                },
              ),
              SizedBox(
                height: 100,
              )
            ],
          ))
        ],
      ),
    );
  }
}
