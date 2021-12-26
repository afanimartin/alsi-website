import 'package:ALSI/screens/screens.dart';
import 'package:flutter/material.dart';
import 'package:ALSI/widgets/responsive.dart';
import 'package:ALSI/widgets/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key, this.scrollOffset = 0}) : super(key: key);

  final double scrollOffset;

  @override
  Widget build(BuildContext context) {
    return Container(
        color: const Color(0xFF25294E)
            .withOpacity((scrollOffset / 350).clamp(0, 1)),
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
        child: Responsive(
          mobile: _CustomAppBarMobile(),
          desktop: _CustomAppBarDesktop(),
        ));
  }
}

class _AppBarButton extends StatelessWidget {
  const _AppBarButton({required this.title, required this.onTap, Key? key})
      : super(key: key);

  final String title;
  final Function() onTap;

  @override
  Widget build(BuildContext context) => MouseRegion(
        cursor: SystemMouseCursors.click,
        child: GestureDetector(
          onTap: onTap,
          child: Text(
            title,
            style: GoogleFonts.montserrat(
                textStyle: const TextStyle(
                    color: Colors.white, fontSize: 24, letterSpacing: 1.2)),
          ),
        ),
      );
}

class _CustomAppBarMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) => SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.alphabetic,
          children: [
            const Text('ALSI',
                style: TextStyle(
                    fontSize: 28,
                    color: Colors.white,
                    fontWeight: FontWeight.bold)),
            const Spacer(),
            IconButton(
                onPressed: () => _buildLinks(context),
                icon: const Icon(
                  Icons.menu,
                  color: Colors.white,
                ))
          ],
        ),
      );

  Future<dynamic> _buildLinks(BuildContext context) => showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      enableDrag: true,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
      builder: (context) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                GestureDetector(
                    onTap: () => Navigator.of(context)
                        .push(MaterialPageRoute(builder: (_) => const About())),
                    child: const Text(
                      'About',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    )),
                const SizedBox(height: 10),
                GestureDetector(
                    onTap: () => Navigator.of(context).push(
                        MaterialPageRoute(builder: (_) => const Contact())),
                    child: const Text('Contact',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold))),
                const SizedBox(height: 10),
                GestureDetector(
                    onTap: () => Navigator.of(context).push(
                        MaterialPageRoute(builder: (_) => const Activities())),
                    child: const Text('Activities',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold))),
                const SizedBox(height: 10),
                GestureDetector(
                    onTap: () => Navigator.of(context).push(
                        MaterialPageRoute(builder: (_) => const Projects())),
                    child: const Text('Projects',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold))),
                const SizedBox(height: 10),
                CustomTextButton(
                    title: 'Donate',
                    backgroundColor: const Color(0xFFFF5722),
                    fontSize: 14,
                    onPressed: () => Navigator.of(context).push(
                        MaterialPageRoute(builder: (_) => const Donation())))
              ],
            ),
          ));
}

class _CustomAppBarDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 50),
            child: Text('ALSI',
                style: GoogleFonts.montserrat(
                    textStyle: const TextStyle(
                        fontSize: 48,
                        color: Colors.white,
                        fontWeight: FontWeight.bold))),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _AppBarButton(
                    title: 'About',
                    onTap: () => Navigator.of(context).push(
                        MaterialPageRoute(builder: (_) => const About()))),
                _AppBarButton(
                    title: 'Contact',
                    onTap: () => Navigator.of(context).push(
                        MaterialPageRoute(builder: (_) => const Contact()))),
                _AppBarButton(
                    title: 'Activities',
                    onTap: () => Navigator.of(context).push(
                        MaterialPageRoute(builder: (_) => const Activities()))),
                _AppBarButton(
                    title: 'Projects',
                    onTap: () => Navigator.of(context).push(
                        MaterialPageRoute(builder: (_) => const Projects()))),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 50),
            child: CustomTextButton(
              title: 'Donate',
              backgroundColor: const Color(0xFFFF5722),
              onPressed: () {},
            ),
          )
        ],
      );
}
