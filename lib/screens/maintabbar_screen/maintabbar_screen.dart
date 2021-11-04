import 'package:flutter/material.dart';
import 'package:social_media_profile_screen/screens/maintabbar_screen/grow.dart';
import 'package:social_media_profile_screen/screens/maintabbar_screen/havest.dart';
import 'package:social_media_profile_screen/screens/maintabbar_screen/home.dart';
import 'package:social_media_profile_screen/screens/maintabbar_screen/profile_screen.dart';
import 'package:social_media_profile_screen/screens/maintabbar_screen/seed.dart';
import 'package:social_media_profile_screen/utilities/constants.dart';

class MainTabBarScreen extends StatefulWidget {
  static String routeName = "maintabbar_screen";
  const MainTabBarScreen({Key? key}) : super(key: key);

  @override
  _MainTabBarScreen createState() => _MainTabBarScreen();
}

class _MainTabBarScreen extends State<MainTabBarScreen> {
  int currentIndex = 0;
  final screens = [
    HomeScreen(),
    SeedScreen(),
    GrowScreen(),
    HavestScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
            body: IndexedStack(
              index: currentIndex,
              children: screens,
            ),
            bottomNavigationBar: BottomNavigationBar(
                currentIndex: currentIndex,
                onTap: (index) => setState(() => currentIndex = index),
                selectedItemColor: Color.fromRGBO(39, 54, 134, 1),
                selectedIconTheme:
                    IconThemeData(color: Color.fromRGBO(39, 54, 134, 1)),
                type: BottomNavigationBarType.fixed,
                iconSize: 26,
                items: [
                  BottomNavigationBarItem(
                    icon: Container(
                        width: 50,
                        height: 40,
                        child: Image.asset(kIconsPath + 'home.png')),
                    activeIcon: Container(
                        width: 50,
                        height: 40,
                        child: Image.asset(kIconsPath + 'home-color.png')),
                    label: "",
                  ),
                  BottomNavigationBarItem(
                    icon: Container(
                        width: 50,
                        height: 40,
                        child: Image.asset(kIconsPath + 'seed.png')),
                    activeIcon: Container(
                        width: 50,
                        height: 40,
                        child: Image.asset(kIconsPath + 'seed-color.png')),
                    label: "",
                  ),
                  BottomNavigationBarItem(
                    icon: Container(
                        width: 50,
                        height: 40,
                        child: Image.asset(kIconsPath + 'grow.png')),
                    activeIcon: Container(
                        width: 50,
                        height: 40,
                        child: Image.asset(kIconsPath + 'grow-color.png')),
                    label: "",
                  ),
                  BottomNavigationBarItem(
                    icon: Container(
                        width: 50,
                        height: 40,
                        child: Image.asset(kIconsPath + 'havest.png')),
                    activeIcon: Container(
                        width: 50,
                        height: 40,
                        child: Image.asset(kIconsPath + 'havest-color.png')),
                    label: "",
                  ),
                  BottomNavigationBarItem(
                    icon: Container(
                        child: Icon(
                      Icons.person,
                      size: 35,
                    )),
                    label: "",
                  )
                ])));
  }
}
