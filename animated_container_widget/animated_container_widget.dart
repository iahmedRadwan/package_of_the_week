import 'package:flutter/material.dart';

class AnimatedContainerWidget extends StatefulWidget {
  const AnimatedContainerWidget({super.key});

  @override
  State<AnimatedContainerWidget> createState() =>
      _AnimatedContainerWidgetState();
}

class _AnimatedContainerWidgetState extends State<AnimatedContainerWidget> {
  double height = 100;
  double width = 100;
  Color color = Colors.amber;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4),
      child: GestureDetector(
        onTap: () {
          if (height == 100) {
            height = 120;
            width = 100;
          } else if (height == 120) {
            width = 120;
            height = 100;
          }
          setState(() {});
        },
        child: AnimatedContainer(
          height: height,
          width: width,
          curve: Curves.linear,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(12),
          ),
          duration: const Duration(milliseconds: 500),
        ),
      ),
    );
  }
}
