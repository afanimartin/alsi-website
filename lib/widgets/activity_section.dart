import 'package:ALSI/screens/screens.dart';
import 'package:flutter/material.dart';
import 'package:ALSI/widgets/heading.dart';
import 'package:ALSI/widgets/responsive.dart';
import 'package:ALSI/widgets/sub_heading.dart';
import 'package:ALSI/widgets/widgets.dart';

import '../assets.dart';

class ActivitySection extends StatelessWidget {
  const ActivitySection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => const Responsive(
      mobile: _ActivitySectionMobile(), desktop: _ActivitySectionDesktop());
}

class _ActivitySectionMobile extends StatelessWidget {
  const _ActivitySectionMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        width: 960,
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
                padding: EdgeInsets.only(top: 30),
                child: SubHeading(
                    title: 'We are busy building communities',
                    color: Color(0xFFFF5722))),
            const Padding(
              padding: EdgeInsets.only(bottom: 30),
              child: Heading(title: 'Some of our activities'),
            ),
            Image.asset(
              Assets.unmiss,
              fit: BoxFit.cover,
              height: 200,
              width: 350,
            ),
            const SizedBox(
              height: 20,
            ),
            Image.asset(
              Assets.blackGirl,
              fit: BoxFit.cover,
              height: 200,
              width: 350,
            ),
            const SizedBox(
              height: 20,
            ),
            Image.asset(
              Assets.blackChild,
              fit: BoxFit.cover,
              height: 200,
              width: 350,
            ),
            const SizedBox(
              height: 20,
            ),
            CustomTextButton(
              title: 'More Activities',
              fontSize: 14,
              onPressed: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (_) => const Activities())),
              backgroundColor: const Color(0xFFFF5722),
            ),
            const SizedBox(
              height: 30,
            )
          ],
        ),
      );
}

class _ActivitySectionDesktop extends StatelessWidget {
  const _ActivitySectionDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        width: 960,
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
                padding: EdgeInsets.only(top: 30),
                child: SubHeading(
                    title: 'We are busy building communities',
                    color: Color(0xFFFF5722))),
            const Padding(
              padding: EdgeInsets.only(bottom: 30),
              child: Heading(title: 'Some of our activities'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  Assets.unmiss,
                  fit: BoxFit.cover,
                  height: 200,
                  width: 350,
                ),
                const SizedBox(
                  width: 20,
                ),
                Image.asset(
                  Assets.blackGirl,
                  fit: BoxFit.cover,
                  height: 200,
                  width: 350,
                ),
                const SizedBox(
                  width: 20,
                ),
                Image.asset(
                  Assets.blackChild,
                  fit: BoxFit.cover,
                  height: 200,
                  width: 350,
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  Assets.unmiss,
                  fit: BoxFit.cover,
                  height: 200,
                  width: 350,
                ),
                const SizedBox(
                  width: 20,
                ),
                Image.asset(
                  Assets.blackGirl,
                  fit: BoxFit.cover,
                  height: 200,
                  width: 350,
                ),
                const SizedBox(
                  width: 20,
                ),
                Image.asset(
                  Assets.blackChild,
                  fit: BoxFit.cover,
                  height: 200,
                  width: 350,
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            CustomTextButton(
              title: 'More Activities',
              onPressed: () {},
              backgroundColor: const Color(0xFFFF5722),
            ),
            const SizedBox(
              height: 50,
            )
          ],
        ),
      );
}
