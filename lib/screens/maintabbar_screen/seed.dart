import 'package:flutter/material.dart';
import 'package:social_media_profile_screen/components/navigation_drawer_widget.dart';

class SeedScreen extends StatefulWidget {
  @override
  State<SeedScreen> createState() => _SeedScreenState();
}

class _SeedScreenState extends State<SeedScreen> {
  String dropdownValue = "Alphabetical";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawerWidget(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 1,
        shadowColor: Colors.orangeAccent,
        title: Text(
          "seed",
          style: TextStyle(fontSize: 30, color: Colors.black45),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              SizedBox(width: 20),
              buildMenu(),
            ],
          ),
          Expanded(
            child: Container(
              color: Colors.yellowAccent,
              height: 200,
              width: 200,
            ),
          ),
        ],
      ),
    );
  }

  Widget buildMenu() => DropdownButton<String>(
        value: dropdownValue,
        icon: const Icon(Icons.arrow_downward),
        iconSize: 24,
        elevation: 16,
        style: const TextStyle(color: Colors.deepPurple),
        underline: Container(
          height: 2,
          color: Colors.deepPurpleAccent,
        ),
        onChanged: (String? newValue) {
          setState(() {
            dropdownValue = newValue!;
          });
        },
        items: <String>['Relevant', 'Ending Soon', 'Newest', 'Alphabetical']
            .map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Row(
              children: [
                Icon(Icons.sort_by_alpha),
                SizedBox(width: 5),
                Text(value),
              ],
            ),
          );
        }).toList(),
      );
}
