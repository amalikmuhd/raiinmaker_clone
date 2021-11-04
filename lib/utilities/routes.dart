import 'package:flutter/material.dart';
import 'package:social_media_profile_screen/screens/login_screen.dart';
import 'package:social_media_profile_screen/screens/recovery_screen.dart';

final Map<String, WidgetBuilder> routes = {
  LoginScreen.routeName: (context) => LoginScreen(),
  RecoveryScreen.routeName: (context) => RecoveryScreen(),
};
