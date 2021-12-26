import 'package:flutter/material.dart';

class Activities extends StatelessWidget {
  const Activities({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
      backgroundColor: const Color(0xFFC8E6C9),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xFFC8E6C9),
        centerTitle: true,
        iconTheme: Theme.of(context).iconTheme,
        title: const Text(
          'Our activities',
          style: TextStyle(color: Color(0xFF25294E)),
        ),
      ));
}
