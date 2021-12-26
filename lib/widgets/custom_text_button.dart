import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton(
      {required this.title,
      required this.onPressed,
      this.fontSize = 24,
      this.backgroundColor = const Color(0xFF002171),
      Key? key})
      : super(key: key);

  final String title;
  final Color backgroundColor;
  final double fontSize;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) => TextButton(
      onPressed: onPressed,
      style: ButtonStyle(
          padding: MaterialStateProperty.all(const EdgeInsets.all(16)),
          backgroundColor: MaterialStateProperty.all(backgroundColor)),
      child: Text(
        title,
        style: GoogleFonts.montserrat(
            textStyle: TextStyle(color: Colors.white, fontSize: fontSize)),
      ));
}
