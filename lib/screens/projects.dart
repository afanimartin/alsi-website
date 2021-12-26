import 'package:flutter/material.dart';

class Projects extends StatelessWidget {
  const Projects({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
      backgroundColor: const Color(0xFFC8E6C9),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xFFC8E6C9),
        centerTitle: true,
        iconTheme: Theme.of(context).iconTheme,
        title: const Text(
          'Our projects',
          style: TextStyle(color: Color(0xFF25294E)),
        ),
      ));
}
