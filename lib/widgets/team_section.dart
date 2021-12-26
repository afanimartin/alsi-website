import 'package:flutter/material.dart';
import 'package:ALSI/widgets/heading.dart';
import 'package:ALSI/widgets/image_asset.dart';
import 'package:ALSI/widgets/responsive.dart';
import 'package:ALSI/widgets/sub_heading.dart';

import '../assets.dart';

class TeamSection extends StatelessWidget {
  const TeamSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => const Responsive(
      mobile: _TeamSectionMobile(), desktop: _TeamSectionDesktop());
}

class _TeamSectionMobile extends StatelessWidget {
  const _TeamSectionMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        color: const Color(0xFFFFFFFF),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 50,
            ),
            const SubHeading(
                title: 'We are one family', color: Color(0xFFFF5722)),
            const Heading(title: 'The awesome team'),
            const SizedBox(
              height: 30,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: const ImageAsset(
                name: Assets.team01,
                width: 200,
                height: 150,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: const ImageAsset(
                name: Assets.team02,
                width: 200,
                height: 150,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: const ImageAsset(
                name: Assets.team03,
                width: 200,
                height: 150,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      );
}

class _TeamSectionDesktop extends StatelessWidget {
  const _TeamSectionDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        color: const Color(0xFFFFFFFF),
        width: 720,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 50,
            ),
            const SubHeading(
                title: 'We are one family', color: Color(0xFFFF5722)),
            const Heading(title: 'The awesome team'),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: const ImageAsset(
                    name: Assets.team01,
                    width: 200,
                    height: 150,
                  ),
                ),
                const SizedBox(
                  width: 40,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: const ImageAsset(
                    name: Assets.team02,
                    width: 200,
                    height: 150,
                  ),
                ),
                const SizedBox(
                  width: 40,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: const ImageAsset(
                    name: Assets.team03,
                    width: 200,
                    height: 150,
                  ),
                ),
              ],
            ),
          ],
        ),
      );
}
