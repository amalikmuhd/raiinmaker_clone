import 'package:flutter/material.dart';
import 'package:social_media_profile_screen/components/circle_loading.dart';
import 'package:social_media_profile_screen/utilities/constants.dart';

class AccountSetting extends StatefulWidget {
  const AccountSetting({Key? key}) : super(key: key);

  @override
  _AccountSettingState createState() => _AccountSettingState();
}

class _AccountSettingState extends State<AccountSetting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          elevation: 0,
          title: Text(
            "Account Settings",
            style: TextStyle(color: Colors.black54),
          ),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleLoading(),
            Text(
              "Coming Soon",
              style: kappbarTitle,
            ),
          ],
        )));
  }
}
