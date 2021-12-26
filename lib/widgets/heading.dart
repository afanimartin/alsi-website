import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Heading extends StatelessWidget {
  const Heading(
      {required this.title,
      this.color = Colors.black,
      this.size = 24,
      Key? key})
      : super(key: key);

  final String title;
  final double size;
  final Color color;

  @override
  Widget build(BuildContext context) => Text(
        title,
        style: GoogleFonts.montserrat(
            textStyle: TextStyle(color: color, fontSize: size)),
      );
}
