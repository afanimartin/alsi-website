import 'package:flutter/material.dart';
import 'package:ALSI/screens/screens.dart';
import 'package:ALSI/widgets/custom_text_button.dart';
import 'package:ALSI/widgets/responsive.dart';
import 'package:google_fonts/google_fonts.dart';

import '../assets.dart';

class HeroWidget extends StatelessWidget {
  const HeroWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => const Responsive(
      mobile: _HeroWidgetMobile(), desktop: _HeroWidgetDesktop());
}

class _HeroWidgetMobile extends StatelessWidget {
  const _HeroWidgetMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Stack(
        alignment: Alignment.center,
        children: [
          Container(
            height: 400,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(Assets.heroImage), fit: BoxFit.cover)),
          ),
          Container(
              height: 400,
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                Theme.of(context).scaffoldBackgroundColor,
                Colors.transparent
              ], begin: Alignment.bottomCenter, end: Alignment.topCenter))),
          Positioned(
              bottom: 50,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'We have come a long way',
                    style: GoogleFonts.montserrat(
                        textStyle: const TextStyle(
                            fontSize: 24,
                            height: 24,
                            color: Color(0xFFFF5722))),
                  ),
                  Flexible(
                    child: Text(
                        "Our projects encourage youth employment and inter-cultural mutual bond",
                        style: GoogleFonts.montserrat(
                            textStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 48,
                          height: 48,
                          fontWeight: FontWeight.bold,
                        ))),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CustomTextButton(
                    title: 'See Projects',
                    fontSize: 14,
                    onPressed: () => Navigator.of(context).push(
                        MaterialPageRoute(builder: (_) => const Projects())),
                  )
                ],
              )),
          const SizedBox(
            height: 10,
          )
        ],
      );
}

class _HeroWidgetDesktop extends StatelessWidget {
  const _HeroWidgetDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Stack(
        alignment: Alignment.bottomLeft,
        children: [
          Container(
            height: 500,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(Assets.heroImage), fit: BoxFit.cover)),
          ),
          Container(
              height: 500,
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                Theme.of(context).scaffoldBackgroundColor,
                Colors.transparent
              ], begin: Alignment.bottomCenter, end: Alignment.topCenter))),
          Positioned(
              left: 60,
              right: 60,
              bottom: 50,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'We have come a long way',
                    style: TextStyle(fontSize: 30, color: Color(0xFFFF5722)),
                  ),
                  const Text(
                    "Our projects encourage\nyouth employment\nand inter-cultural\nmutual bond",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 48,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomTextButton(
                    title: 'See Projects',
                    onPressed: () {},
                  )
                ],
              )),
        ],
      );
}
