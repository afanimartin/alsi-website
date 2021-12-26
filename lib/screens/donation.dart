import 'package:ALSI/widgets/donation_section.dart';
import 'package:flutter/material.dart';

class Donation extends StatelessWidget {
  const Donation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: const Color(0xFFC8E6C9),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: const Color(0xFFC8E6C9),
          centerTitle: true,
          iconTheme: Theme.of(context).iconTheme,
          title: const Text(
            'Support us',
            style: TextStyle(color: Color(0xFF25294E)),
          ),
        ),
        body: const Center(child: DonationSection()),
      );
}
