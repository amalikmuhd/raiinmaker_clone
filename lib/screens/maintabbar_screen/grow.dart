import 'package:flutter/material.dart';
import 'package:social_media_profile_screen/components/navigation_drawer_widget.dart';
import 'package:social_media_profile_screen/utilities/constants.dart';

class GrowScreen extends StatefulWidget {
  @override
  State<GrowScreen> createState() => _GrowScreenState();
}

class _GrowScreenState extends State<GrowScreen>
    with SingleTickerProviderStateMixin {
  late TabController controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawerWidget(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 1,
        shadowColor: Colors.orangeAccent,
        title: Text("grow", style: kappbarTitle),
      ),
      body: Column(
        children: [
          SizedBox(child: buildTabMenu()),
          Expanded(
            child: TabBarView(
              controller: controller,
              children: [
                Container(
                  child: Center(
                    child: Text("You have no open campaign(s)"),
                  ),
                ),
                Container(
                  child: Center(
                    child: Text("You have no ended campaign(s)"),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildTabMenu() {
    return TabBar(controller: controller, labelColor: Colors.black, tabs: [
      Tab(
        text: "Participating",
      ),
      Tab(
        text: "Closed",
      )
    ]);
  }
}
