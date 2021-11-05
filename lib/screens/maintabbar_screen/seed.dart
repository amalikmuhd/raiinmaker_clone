import 'package:flutter/material.dart';
import 'package:social_media_profile_screen/components/dropdown_list.dart';
import 'package:social_media_profile_screen/components/navigation_drawer_widget.dart';
import 'package:social_media_profile_screen/utilities/constants.dart';

class SeedScreen extends StatefulWidget {
  @override
  State<SeedScreen> createState() => _SeedScreenState();
}

class _SeedScreenState extends State<SeedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawerWidget(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 1,
        shadowColor: Colors.orangeAccent,
        title: Text("seed", style: kappbarTitle),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              SizedBox(width: 20),
              DropDownList(),
            ],
          ),
          Expanded(
            child: Center(child: CircularProgressIndicator()),
          ),
        ],
      ),
    );
  }
}
