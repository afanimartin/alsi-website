import 'package:flutter/material.dart';
import 'package:ALSI/widgets/heading.dart';
import 'package:ALSI/widgets/responsive.dart';
import 'package:ALSI/widgets/sub_heading.dart';

class MetricsSection extends StatelessWidget {
  const MetricsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => const Responsive(
      mobile: _MetricsSectionMobile(), desktop: _MetricsSectionDesktop());
}

class _MetricsSectionMobile extends StatelessWidget {
  const _MetricsSectionMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
      color: const Color(0xFFFFAB91),
      child: Padding(
          padding: const EdgeInsets.only(top: 30, bottom: 30),
          child: Column(children: [
            Column(children: const [
              Heading(
                title: '203',
                size: 45,
              ),
              SubHeading(
                title: 'Projects completed',
                size: 28,
              )
            ]),
            const SizedBox(
              width: 20,
            ),
            Column(
              children: const [
                Heading(
                  title: '122',
                  size: 45,
                ),
                SubHeading(
                  title: 'Communities built',
                  size: 28,
                )
              ],
            ),
            const SizedBox(
              width: 20,
            ),
            Column(
              children: const [
                Heading(
                  title: '324',
                  size: 45,
                ),
                SubHeading(
                  title: 'Activities completed',
                  size: 28,
                )
              ],
            )
          ])));
}

class _MetricsSectionDesktop extends StatelessWidget {
  const _MetricsSectionDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        color: const Color(0xFFFFAB91),
        child: Padding(
          padding: const EdgeInsets.only(top: 30, bottom: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: const [
                  Heading(
                    title: '203',
                    size: 60,
                  ),
                  SubHeading(
                    title: 'Projects completed',
                    size: 36,
                  )
                ],
              ),
              const SizedBox(
                width: 20,
              ),
              Column(
                children: const [
                  Heading(
                    title: '122',
                    size: 60,
                  ),
                  SubHeading(
                    title: 'Communities built',
                    size: 36,
                  )
                ],
              ),
              const SizedBox(
                width: 20,
              ),
              const _CustomColumn(
                title: '324',
                description: 'Activities completed',
              )
            ],
          ),
        ),
      );
}

class _CustomColumn extends StatelessWidget {
  const _CustomColumn(
      {required this.title, required this.description, Key? key})
      : super(key: key);

  final String title;
  final String description;

  @override
  Widget build(BuildContext context) => Column(
        children: [
          Heading(
            title: title,
            size: 60,
          ),
          SubHeading(
            title: description,
            size: 36,
          )
        ],
      );
}
