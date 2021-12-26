import 'package:flutter/material.dart';
import 'package:ALSI/assets.dart';
import 'package:ALSI/widgets/heading.dart';
import 'package:ALSI/widgets/image_asset.dart';
import 'package:ALSI/widgets/responsive.dart';
import 'package:ALSI/widgets/sub_heading.dart';

class PartnerSection extends StatelessWidget {
  const PartnerSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => const Responsive(
      mobile: _PartnerSectionMobile(), desktop: _PartnerSectionDesktop());
}

class _PartnerSectionMobile extends StatelessWidget {
  const _PartnerSectionMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        color: const Color(0xFFC8E6C9),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            const SubHeading(
              title: 'We are trusted by people like you',
              color: Color(0xFFFF5722),
            ),
            const Heading(title: 'Our partners'),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                ImageAsset(name: Assets.slack, width: 50, height: 50),
                SizedBox(
                  width: 20,
                ),
                ImageAsset(name: Assets.volswagen, width: 50, height: 50),
                SizedBox(
                  width: 20,
                ),
                ImageAsset(name: Assets.tesla, width: 50, height: 50),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                ImageAsset(name: Assets.slack, width: 50, height: 50),
                SizedBox(
                  width: 20,
                ),
                ImageAsset(name: Assets.volswagen, width: 50, height: 50),
                SizedBox(
                  width: 20,
                ),
                ImageAsset(name: Assets.tesla, width: 50, height: 50),
              ],
            ),
            const SizedBox(height: 20)
          ],
        ),
      );
}

class _PartnerSectionDesktop extends StatelessWidget {
  const _PartnerSectionDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        color: const Color(0xFFC8E6C9),
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            const SubHeading(
              title: 'We are trusted by people like you',
              color: Color(0xFFFF5722),
            ),
            const Heading(title: 'Our partners'),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                ImageAsset(name: Assets.slack, width: 50, height: 50),
                SizedBox(
                  width: 50,
                ),
                ImageAsset(name: Assets.volswagen, width: 50, height: 50),
                SizedBox(
                  width: 50,
                ),
                ImageAsset(name: Assets.tesla, width: 50, height: 50),
                SizedBox(
                  width: 50,
                ),
                ImageAsset(name: Assets.slack, width: 50, height: 50),
                SizedBox(
                  width: 50,
                ),
                ImageAsset(name: Assets.volswagen, width: 50, height: 50),
                SizedBox(
                  width: 50,
                ),
                ImageAsset(name: Assets.tesla, width: 50, height: 50),
              ],
            ),
            const SizedBox(
              height: 50,
            )
          ],
        ),
      );
}
