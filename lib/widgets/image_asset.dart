import 'package:flutter/material.dart';

class ImageAsset extends StatelessWidget {
  const ImageAsset(
      {required this.name, required this.width, required this.height, Key? key})
      : super(key: key);

  final String name;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) => Image.asset(
        name,
        height: height,
        width: width,
        fit: BoxFit.cover,
      );
}
