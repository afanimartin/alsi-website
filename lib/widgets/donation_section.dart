import 'package:flutter/material.dart';
import 'package:ALSI/widgets/heading.dart';
import 'package:ALSI/widgets/responsive.dart';
import 'package:ALSI/widgets/sub_heading.dart';
import 'package:ALSI/widgets/widgets.dart';

class DonationSection extends StatelessWidget {
  const DonationSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => const Responsive(
      mobile: _DonationSectionMobile(), desktop: _DonationSectionDesktop());
}

class _DonationSectionMobile extends StatelessWidget {
  const _DonationSectionMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        color: const Color(0xFFC8E6C9),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 20,
            ),
            const SubHeading(
              title: 'Support our causes',
              color: Color(0xFF4071E7),
            ),
            const Heading(title: 'Make a donation'),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 280,
              child: TextField(
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.all(8),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Theme.of(context).primaryColorDark)),
                  labelText: 'Enter amount to donate',
                  helperText: '',
                ),
              ),
            ),
            SizedBox(
              width: 280,
              child: TextField(
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.all(8),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Theme.of(context).primaryColorDark)),
                  labelText: 'Enter full name',
                  helperText: '',
                ),
              ),
            ),
            SizedBox(
              width: 280,
              child: TextField(
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.all(8),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Theme.of(context).primaryColorDark)),
                  labelText: 'Enter email address',
                  helperText: '',
                ),
              ),
            ),
            SizedBox(
              width: 280,
              child: CustomTextButton(
                title: 'Donate',
                fontSize: 14,
                onPressed: () {},
                backgroundColor: const Color(0xFFFF5722),
              ),
            ),
            const SizedBox(height: 20)
          ],
        ),
      );
}

class _DonationSectionDesktop extends StatelessWidget {
  const _DonationSectionDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        color: Theme.of(context).primaryColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 50,
            ),
            const SubHeading(
              title: 'Support our causes',
              color: Color(0xFFFF5722),
            ),
            const Heading(title: 'Make a donation'),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              width: 360,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Theme.of(context).primaryColorDark)),
                  labelText: 'Enter amount to donate',
                  helperText: '',
                ),
              ),
            ),
            SizedBox(
              width: 360,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Theme.of(context).primaryColorDark)),
                  labelText: 'Enter full name',
                  helperText: '',
                ),
              ),
            ),
            SizedBox(
              width: 360,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Theme.of(context).primaryColorDark)),
                  labelText: 'Enter email address',
                  helperText: '',
                ),
              ),
            ),
            SizedBox(
              width: 360,
              child: CustomTextButton(
                title: 'Donate',
                onPressed: () {},
                backgroundColor: const Color(0xFFFF5722),
              ),
            ),
            const SizedBox(height: 50)
          ],
        ),
      );
}
