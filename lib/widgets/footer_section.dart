import 'package:ALSI/screens/screens.dart';
import 'package:flutter/material.dart';
import 'package:ALSI/widgets/image_asset.dart';
import 'package:ALSI/widgets/responsive.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../assets.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => const Responsive(
      mobile: _FooterSectionMobile(), desktop: _FooterSectionDesktop());
}

class _FooterSectionMobile extends StatelessWidget {
  const _FooterSectionMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
      color: const Color(0xFF25294E),
      child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        const Text('ALSI',
            style: TextStyle(
                fontSize: 36,
                color: Colors.white,
                fontWeight: FontWeight.bold)),
        const SizedBox(
          height: 6,
        ),
        const SizedBox(
          width: 200,
          child: Text(
            'Africa Leadership Skills Initiative (ALSI) is non-profit making, non-political, non-governmental',
            style: TextStyle(fontSize: 18, color: Colors.white, height: 1.2),
          ),
        ),
        const SizedBox(
          height: 6,
        ),
        Column(children: [
          const Text('Projects',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold)),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5, right: 5),
            child: Row(
              children: const [
                Expanded(
                    child: ImageAsset(
                        name: Assets.project01, width: 175, height: 100)),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                    child: ImageAsset(
                        name: Assets.project02, width: 175, height: 100)),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 5, right: 5),
            child: Row(children: const [
              Expanded(
                  child: ImageAsset(
                      name: Assets.project01, width: 175, height: 100)),
              SizedBox(
                width: 10,
              ),
              Expanded(
                  child: ImageAsset(
                      name: Assets.project02, width: 175, height: 100)),
            ]),
          ),
          const SizedBox(height: 10),
          GestureDetector(
            onTap: () => Navigator.of(context)
                .push(MaterialPageRoute(builder: (_) => const About())),
            child: const Text('About',
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.bold)),
          ),
          const SizedBox(height: 10),
          GestureDetector(
            onTap: () => Navigator.of(context)
                .push(MaterialPageRoute(builder: (_) => const Contact())),
            child: const Text('Contact',
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.bold)),
          ),
          const SizedBox(height: 10),
          GestureDetector(
            onTap: () => Navigator.of(context)
                .push(MaterialPageRoute(builder: (_) => const Activities())),
            child: const Text('Activities',
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.bold)),
          ),
          const SizedBox(height: 10),
          GestureDetector(
            onTap: () => Navigator.of(context)
                .push(MaterialPageRoute(builder: (_) => const Projects())),
            child: const Text('Projects',
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.bold)),
          ),
        ]),
        const SizedBox(
          height: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              width: 200,
              child: Text('Feel free to contact us incase of any inquiries',
                  style: TextStyle(fontSize: 18, color: Colors.white)),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      FontAwesomeIcons.envelope,
                      color: Colors.white,
                    )),
                const Text('alsi-ss@gmail.com',
                    style: TextStyle(fontSize: 18, color: Colors.white))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      FontAwesomeIcons.phone,
                      color: Colors.white,
                    )),
                const Text('+211-925-674-592',
                    style: TextStyle(fontSize: 18, color: Colors.white))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      FontAwesomeIcons.locationArrow,
                      color: Colors.white,
                    )),
                const SizedBox(
                  width: 150,
                  child: Text(
                      'Nimra Talata Liberty Commercial Building, Juba, South Sudan',
                      style: TextStyle(fontSize: 18, color: Colors.white)),
                )
              ],
            )
          ],
        ),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                FontAwesomeIcons.facebook,
                color: Colors.white,
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                FontAwesomeIcons.instagram,
                color: Colors.white,
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                FontAwesomeIcons.whatsapp,
                color: Colors.white,
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                FontAwesomeIcons.twitter,
                color: Colors.white,
              ))
        ]),
      ]));
}

class _FooterSectionDesktop extends StatelessWidget {
  const _FooterSectionDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        color: const Color(0xFF25294E),
        child: Padding(
          padding: const EdgeInsets.only(top: 50, bottom: 50),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('ALSI',
                      style: TextStyle(
                          fontSize: 36,
                          color: Colors.white,
                          fontWeight: FontWeight.bold)),
                  const SizedBox(
                    height: 6,
                  ),
                  const SizedBox(
                    width: 300,
                    child: Text(
                      'Africa Leadership Skills Initiative (ALSI) is non-profit making, non-political, non-governmental',
                      style: TextStyle(
                          fontSize: 18, color: Colors.white, height: 1.2),
                    ),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          FontAwesomeIcons.facebook,
                          color: Colors.white,
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          FontAwesomeIcons.instagram,
                          color: Colors.white,
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          FontAwesomeIcons.whatsapp,
                          color: Colors.white,
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          FontAwesomeIcons.twitter,
                          color: Colors.white,
                        ))
                  ])
                ],
              ),
              Column(
                children: const [
                  Text('About',
                      style: TextStyle(fontSize: 18, color: Colors.white)),
                  SizedBox(height: 6),
                  Text('Contact',
                      style: TextStyle(fontSize: 18, color: Colors.white)),
                  SizedBox(height: 6),
                  Text('Activities',
                      style: TextStyle(fontSize: 18, color: Colors.white)),
                  SizedBox(height: 6),
                  Text('Projects',
                      style: TextStyle(fontSize: 18, color: Colors.white))
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    width: 200,
                    child: Text(
                        'Feel free to contact us incase of any inquiries',
                        style: TextStyle(fontSize: 18, color: Colors.white)),
                  ),
                  Row(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            FontAwesomeIcons.envelope,
                            color: Colors.white,
                          )),
                      const Text('alsi-ss@gmail.com',
                          style: TextStyle(fontSize: 18, color: Colors.white))
                    ],
                  ),
                  Row(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            FontAwesomeIcons.phone,
                            color: Colors.white,
                          )),
                      const Text('+211-925-674-592',
                          style: TextStyle(fontSize: 18, color: Colors.white))
                    ],
                  ),
                  Row(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            FontAwesomeIcons.locationArrow,
                            color: Colors.white,
                          )),
                      const SizedBox(
                        width: 200,
                        child: Text(
                            'Nimra Talata Liberty Commercial Building, Juba, South Sudan',
                            style:
                                TextStyle(fontSize: 18, color: Colors.white)),
                      )
                    ],
                  )
                ],
              ),
              Expanded(
                child: Column(
                  children: [
                    const Text('Projects',
                        style: TextStyle(fontSize: 20, color: Colors.white)),
                    const SizedBox(
                      width: 10,
                    ),
                    Row(
                      children: const [
                        Expanded(
                          child: ImageAsset(
                              name: Assets.project01, width: 200, height: 100),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: ImageAsset(
                              name: Assets.project02, width: 200, height: 100),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: const [
                        Expanded(
                          child: ImageAsset(
                              name: Assets.project01, width: 200, height: 100),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: ImageAsset(
                              name: Assets.project02, width: 200, height: 100),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      );
}
