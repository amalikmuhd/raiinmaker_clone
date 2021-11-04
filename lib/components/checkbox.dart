import 'package:flutter/material.dart';
import 'package:social_media_profile_screen/utilities/constants.dart';

class CheckBoxWidget extends StatefulWidget {
  @override
  State<CheckBoxWidget> createState() => _CheckBoxWidgetState();
}

class _CheckBoxWidgetState extends State<CheckBoxWidget> {
  bool value = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
          onTap: () {
            setState(() {
              this.value = !value;
            });
          },
          leading: Checkbox(
              activeColor: kcheckBoxColor,
              value: value,
              onChanged: (value) {
                setState(() {
                  this.value = value!;
                });
              }),
          title: Text(
            termsAndConditions,
            style: ktermsAndConditionsStyle,
          )),
    );
  }
}


//  Widget buildCheckBox() =>