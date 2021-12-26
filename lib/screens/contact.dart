import 'package:flutter/material.dart';

class Contact extends StatelessWidget {
  const Contact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
      backgroundColor: const Color(0xFFC8E6C9),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xFFC8E6C9),
        centerTitle: true,
        iconTheme: Theme.of(context).iconTheme,
        title: const Text(
          'Talk to us',
          style: TextStyle(color: Color(0xFF25294E)),
        ),
      ));
}
