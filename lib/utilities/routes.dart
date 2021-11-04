import 'package:flutter/material.dart';
import 'package:social_media_profile_screen/screens/loading.dart';
import 'package:social_media_profile_screen/screens/loading_two.dart';
import 'package:social_media_profile_screen/screens/login_screen.dart';
import 'package:social_media_profile_screen/screens/maintabbar_screen/maintabbar_screen.dart';
import 'package:social_media_profile_screen/screens/recovery_screen.dart';

final Map<String, WidgetBuilder> routes = {
  LoginScreen.routeName: (context) => LoginScreen(),
  RecoveryScreen.routeName: (context) => RecoveryScreen(),
  LoadingScreen.routeName: (context) => LoadingScreen(),
  LoadingScreenTwo.routeName: (context) => LoadingScreenTwo(),
  MainTabBarScreen.routeName: (context) => MainTabBarScreen(),
};
