import 'package:flutter/material.dart';
import 'package:social_media_profile_screen/utilities/constants.dart';

class DefaultButton extends StatefulWidget {
  final void Function()? onPressed;
  final String title;
  DefaultButton({required this.title, required this.onPressed});

  @override
  State<DefaultButton> createState() => _DefaultButtonState();
}

class _DefaultButtonState extends State<DefaultButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: widget.onPressed,
      child: Text(
        widget.title,
        style: TextStyle(
          fontSize: 18 * MediaQuery.of(context).textScaleFactor,
          color: Colors.black45,
        ),
      ),
      style: ElevatedButton.styleFrom(
          elevation: 0,
          shadowColor: Colors.transparent,
          primary: kprimaryButtonBackgroundColor,
          fixedSize:
              Size(330 * MediaQuery.of(context).devicePixelRatio / 3, 44)),
    );
  }
}
