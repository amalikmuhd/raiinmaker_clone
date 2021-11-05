import 'package:flutter/material.dart';

class CircleLoading extends StatefulWidget {
  const CircleLoading({Key? key}) : super(key: key);

  @override
  _CircleLoadingState createState() => _CircleLoadingState();
}

class _CircleLoadingState extends State<CircleLoading>
    with TickerProviderStateMixin {
  late AnimationController controller;
  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    )..addListener(() {
        setState(() {});
      });
    controller.repeat(reverse: true);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CircularProgressIndicator(
      value: controller.value,
    );
  }
}
