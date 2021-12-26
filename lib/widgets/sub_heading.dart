import 'package:flutter/material.dart';

class SubHeading extends StatelessWidget {
  const SubHeading(
      {required this.title,
      this.color = Colors.black,
      this.size = 18,
      Key? key})
      : super(key: key);

  final String title;
  final double size;
  final Color color;

  @override
  Widget build(BuildContext context) => Text(
        title,
        style: TextStyle(
            color: color, fontWeight: FontWeight.normal, fontSize: size),
      );
}
