import 'package:flutter/material.dart';
import 'package:social_media_profile_screen/screens/maintabbar_screen/account_settings.dart';
import 'package:social_media_profile_screen/utilities/constants.dart';

class NavigationDrawerWidget extends StatefulWidget {
  @override
  State<NavigationDrawerWidget> createState() => _NavigationDrawerWidgetState();
}

class _NavigationDrawerWidgetState extends State<NavigationDrawerWidget> {
  final padding = EdgeInsets.symmetric(horizontal: 20);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Color.fromRGBO(246, 246, 246, 1),
        child: ListView(
          children: [
            SizedBox(height: 20),
            buildImage(),
            SizedBox(height: 20),
            buildTextItem(text: 'raiinmaker-7846905'),
            Divider(),
            buildMenuItem(
                text: "Home",
                icon: Icon(Icons.home),
                onTap: () => selectedItem(context, 0)),
            buildMenuItem(
                text: "My Campaigns",
                icon: Icon(Icons.person),
                onTap: () => selectedItem(context, 0)),
            buildMenuItem(
                text: "Account",
                icon: Icon(Icons.person),
                onTap: () => selectedItem(context, 2)),
            buildMenuItem(
                text: "Contact Support",
                icon: Icon(Icons.contact_mail),
                onTap: () => selectedItem(context, 0)),
            buildMenuItem(
                text: "Redeem Rewards",
                icon: Icon(null),
                onTap: () => selectedItem(context, 0)),
            buildMenuItem(
                text: "Logout",
                icon: Icon(Icons.login_rounded),
                onTap: () => selectedItem(context, 0)),
            SizedBox(
              height: 50,
            ),
            Text(
              "raiinmaker - v1.0.4",
              style: TextStyle(fontWeight: FontWeight.w100),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }

  Widget buildMenuItem(
      {required String text,
      required Icon icon,
      required VoidCallback? onTap}) {
    return InkWell(
      child: ListTile(
        title: Text(
          text,
          style: TextStyle(fontWeight: FontWeight.w300),
        ),
        trailing: icon,
        onTap: onTap,
      ),
      onTap: () {},
    );
  }

  Widget buildTextItem({required String text}) {
    return ListTile(
      title: Text(text, style: TextStyle(fontSize: 20)),
    );
  }

  Widget buildImage() {
    return Row(
      children: [
        SizedBox(width: 10),
        CircleAvatar(
          maxRadius: 33,
          backgroundImage: AssetImage(kImagePath + 'passport-colored.jpg'),
        ),
      ],
    );
  }

  void selectedItem(BuildContext context, int index) {
    Navigator.of(context).pop();
    switch (index) {
      case 2:
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => AccountSetting()));
        break;

      case 3:
        // Navigator.of(context)
        //     .push(MaterialPageRoute(builder: (context) => GrowScreen()));
        break;
      default:
    }
  }
}
