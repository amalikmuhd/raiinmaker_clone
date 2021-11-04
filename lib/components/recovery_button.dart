import 'package:flutter/material.dart';
import 'package:social_media_profile_screen/utilities/constants.dart';

class RecoveryButton extends StatefulWidget {
  final void Function()? onPressed;
  final String title;
  RecoveryButton({required this.title, required this.onPressed});

  @override
  State<RecoveryButton> createState() => _RecoveryButtonState();
}

class _RecoveryButtonState extends State<RecoveryButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          TextButton(
            onPressed: widget.onPressed,
            child: Text(
              widget.title,
              style: kRecoveryButtonStyle,
            ),
          ),
        ],
      ),
    );
  }
}
