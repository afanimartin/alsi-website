import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ALSI/app_bar/app_bar_cubit.dart';
import 'package:ALSI/widgets/about_section.dart';
import 'package:ALSI/widgets/activity_section.dart';
import 'package:ALSI/widgets/copyright_section.dart';
import 'package:ALSI/widgets/donation_section.dart';
import 'package:ALSI/widgets/footer_section.dart';
import 'package:ALSI/widgets/metrics_section.dart';
import 'package:ALSI/widgets/partner_section.dart';
import 'package:ALSI/widgets/team_section.dart';
import 'package:ALSI/widgets/widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late ScrollController _scrollController;

  @override
  void initState() {
    super.initState();

    _scrollController = ScrollController()
      ..addListener(() {
        context.read<AppBarCubit>().setOffset(_scrollController.offset);
      });
  }

  @override
  void dispose() {
    super.dispose();

    _scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final _screenSize = MediaQuery.of(context).size;

    return BlocBuilder<AppBarCubit, double>(
      builder: (context, scrollOffset) => Scaffold(
        extendBodyBehindAppBar: true,
        appBar: PreferredSize(
          preferredSize: Size(_screenSize.width / 2, 100),
          child: SafeArea(
              child: CustomAppBar(
            scrollOffset: scrollOffset,
          )),
        ),
        body: CustomScrollView(
          controller: _scrollController,
          slivers: const [
            SliverToBoxAdapter(
              child: HeroWidget(),
            ),
            SliverPadding(
              padding: EdgeInsets.only(top: 50),
              sliver: SliverToBoxAdapter(
                child: AboutSection(),
              ),
            ),
            SliverToBoxAdapter(
              child: ActivitySection(),
            ),
            SliverToBoxAdapter(
              child: MetricsSection(),
            ),
            SliverToBoxAdapter(
              child: PartnerSection(),
            ),
            SliverToBoxAdapter(
              child: TeamSection(),
            ),
            SliverToBoxAdapter(
              child: DonationSection(),
            ),
            SliverToBoxAdapter(
              child: FooterSection(),
            ),
            SliverToBoxAdapter(
              child: CopyrightSection(),
            )
          ],
        ),
      ),
    );
  }
}
