import 'package:flutter/material.dart';
import 'package:ALSI/widgets/responsive.dart';

class CopyrightSection extends StatelessWidget {
  const CopyrightSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => const Responsive(
      mobile: _CopyrightSectionMobile(), desktop: _CopyrightSectionDesktop());
}

class _CopyrightSectionMobile extends StatelessWidget {
  const _CopyrightSectionMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        alignment: Alignment.center,
        color: const Color(0xFFC8E6C9),
        child: const Padding(
          padding: EdgeInsets.only(top: 10, bottom: 10),
          child: Text(
            'Made with ❤️ by jt-ss.com',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      );
}

class _CopyrightSectionDesktop extends StatelessWidget {
  const _CopyrightSectionDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        alignment: Alignment.center,
        color: const Color(0xFFC8E6C9),
        child: const Padding(
          padding: EdgeInsets.only(top: 10, bottom: 10),
          child: Text(
            'Made with ❤️ by jt-ss.com',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      );
}
