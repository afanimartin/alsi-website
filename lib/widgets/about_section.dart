import 'package:ALSI/screens/screens.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:ALSI/widgets/heading.dart';
import 'package:ALSI/widgets/image_asset.dart';
import 'package:ALSI/widgets/responsive.dart';
import 'package:ALSI/widgets/sub_heading.dart';
import 'package:google_fonts/google_fonts.dart';

import '../assets.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => const Responsive(
      mobile: _AboutSectionMobile(), desktop: _AboutSectionDesktop());
}

class _AboutSectionMobile extends StatelessWidget {
  const _AboutSectionMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        color: Theme.of(context).primaryColor,
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Who we are?',
              style: TextStyle(fontSize: 18, color: Color(0xFFFF5722)),
            ),
            const SizedBox(
              height: 6,
            ),
            const Text('Read the story...',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600)),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Image.asset(
                Assets.blackChild,
                height: 350,
                width: MediaQuery.of(context).size.width / 1.1,
                fit: BoxFit.cover,
              ),
            ),
            Container(
                margin: const EdgeInsets.only(top: 20, left: 10, right: 10),
                height: MediaQuery.of(context).size.width / 1.05,
                child: const Flexible(
                    child: Text(
                  'Africa Leadership Skills Initiative (ALSI) is non-profit making, non-political, non-governmental; community based organization operating in South Sudan to support community leaders in advocating for peace and reconciliation, conflict resolutions, sustainable development, environmental conservation, and health awareness.\n\nALSI faced with recurrent intertribal conflicts which have in turn resulted in the rise number of internally displaced persons, early marriages, food insecurity, children abductions, and violation of children rights in South Sudan and especially in Jonglei state.\n\nThe state is most hit by the post-election rebellion lead by the late dissident general George Athor and intertribal conflict...',
                  style: TextStyle(fontSize: 16),
                ))),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      );
}

class _AboutSectionDesktop extends StatelessWidget {
  const _AboutSectionDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => MouseRegion(
        cursor: SystemMouseCursors.click,
        child: GestureDetector(
          onTap: () => Navigator.of(context)
              .push(MaterialPageRoute(builder: (_) => const About())),
          child: Container(
            color: Theme.of(context).primaryColor,
            child: Column(
              children: [
                const SizedBox(
                  height: 50,
                ),
                const SubHeading(
                    title: 'Who we are?', color: Color(0xFFFF5722)),
                const Heading(title: 'Read our story'),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 500,
                      height: 500,
                      child: Image.asset(Assets.blackChild),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    SizedBox(
                      width: 410,
                      height: 500,
                      child: Expanded(
                        child: Column(
                          children: [
                            const Flexible(
                              child: Text(
                                'Africa Leadership Skills Initiative (ALSI) is non-profit making, non-political, non-governmental; community based organization operating in South Sudan to support community leaders in advocating for peace and reconciliation, conflict resolutions, sustainable development, environmental conservation, and health awareness. The state is most hit by the post-election rebellion lead by the late dissident general George Athor and intertribal conflict...',
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    height: 1.35),
                              ),
                            ),
                            const SizedBox(height: 20),
                            Row(
                              children: const [
                                _CustomContainer(
                                    title: 'Mission',
                                    body:
                                        'To promote sustainable development through building the capacities of communities in understanding dangers of war and benefit of peace as a solution and a pillar for economic growth and cohesive coexistence in South Sudan and in Africa',
                                    color: Color(0xFFC8E6C9)),
                                SizedBox(
                                  width: 10,
                                ),
                                _CustomContainer(
                                    title: 'Vision',
                                    body:
                                        'ALSI envisions a South Sudan that is transformed, peaceful, productive and sustainably developed',
                                    color: Color(0xFFFFAB91))
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
              ],
            ),
          ),
        ),
      );
}

class _CustomContainer extends StatelessWidget {
  const _CustomContainer(
      {required this.title,
      required this.body,
      required this.color,
      this.width = 200,
      this.height = 240,
      Key? key})
      : super(key: key);
  final double width;
  final double height;
  final Color color;
  final String title;
  final String body;

  @override
  Widget build(BuildContext context) => Container(
        height: height,
        width: width,
        color: color,
        child: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Column(
            children: [
              Text(
                title,
                textAlign: TextAlign.center,
                style: GoogleFonts.montserrat(
                    textStyle: const TextStyle(
                  fontSize: 24,
                  color: Color(0xFF666666),
                )),
              ),
              Flexible(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 6, vertical: 6),
                  child: Text(
                    body,
                    style: const TextStyle(fontSize: 16),
                  ),
                ),
              )
            ],
          ),
        ),
      );
}
