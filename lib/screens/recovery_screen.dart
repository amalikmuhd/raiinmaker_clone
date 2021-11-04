import 'package:flutter/material.dart';
import 'package:social_media_profile_screen/components/checkbox.dart';
import 'package:social_media_profile_screen/components/default_button.dart';
import 'package:social_media_profile_screen/components/main_logo.dart';
import 'package:social_media_profile_screen/components/recovery_button.dart';
import 'package:social_media_profile_screen/screens/loading_two.dart';

class RecoveryScreen extends StatefulWidget {
  static final String routeName = "recovery_screen";
  @override
  State<RecoveryScreen> createState() => _RecoveryScreenState();
}

class _RecoveryScreenState extends State<RecoveryScreen> {
  double padding = 15;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(child: MainLogo()),
              Container(
                  child: Column(
                children: [
                  Text(
                    "Recovery Mode",
                    style: TextStyle(fontSize: 20, color: Colors.black54),
                  ),
                  buildTextField(),
                  buildPasswordTextField(),
                  SizedBox(height: 12),
                  CheckBoxWidget(),
                  // SizedBox(height: padding),
                  DefaultButton(
                    title: 'Recovery Account',
                    onPressed: () {
                      Navigator.pushNamed(context, LoadingScreenTwo.routeName);
                    },
                  ),
                  // SizedBox(height: padding),
                  RecoveryButton(
                    title: 'Exit Recovery Mode',
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }

  Widget buildTextField() => Container(
        width: 330 * MediaQuery.of(context).devicePixelRatio / 3,
        child: TextField(
          autocorrect: false,
          enableSuggestions: false,
          keyboardType: TextInputType.name,
          decoration: InputDecoration(
              labelText: "Username",
              labelStyle: TextStyle(color: Colors.black54),
              hintText: "Enter your username"),
        ),
      );

  Widget buildPasswordTextField() => Container(
        width: 330 * MediaQuery.of(context).devicePixelRatio / 3,
        child: TextField(
          autocorrect: false,
          enableSuggestions: false,
          keyboardType: TextInputType.name,
          decoration: InputDecoration(
            labelText: "Recovery Code",
            labelStyle: TextStyle(color: Colors.black54),
            hintText: "Enter your recovery code",
          ),
        ),
      );
}
