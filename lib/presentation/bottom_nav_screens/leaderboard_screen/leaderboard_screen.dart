import 'package:capi_restro/core/core.dart';
import 'package:capi_restro/presentation/bottom_nav_screens/leaderboard_screen/json/leaderboard_list.dart';
import 'package:capi_restro/presentation/bottom_nav_screens/leaderboard_screen/leaderboard_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LeaderboardScreen extends StatefulWidget {
  const LeaderboardScreen({super.key});

  @override
  State<LeaderboardScreen> createState() => _LeaderboardScreenState();
}

class _LeaderboardScreenState extends State<LeaderboardScreen>
    with SingleTickerProviderStateMixin {
  late TabController controller;

  void _handleTabSelection() {
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 3, vsync: this);
    controller.addListener(_handleTabSelection);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final title = Theme.of(context).textTheme.titleMedium?.copyWith(
          fontWeight: FontWeight.w400,
        );

    final subtitle = Theme.of(context).textTheme.titleSmall?.copyWith(
          fontWeight: FontWeight.w400,
          color: AppColors.borderGrey,
        );
    return SafeArea(
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
          backgroundColor: AppColors.lightGrey,
          appBar: AppBar(
            backgroundColor: AppColors.surfaceWhite,
            leading: SvgPicture.asset(
              Assets.trophy,
              fit: BoxFit.scaleDown,
            ),
            title: Text(
              'Top Foodies',
              style: Theme.of(context).textTheme.headline5?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: AppColors.iconBlack,
                    fontFamily: 'Quicksand',
                  ),
            ),
            bottom: TabBar(
              // controller: controller,
              labelColor: AppColors.primaryGreen,
              indicatorColor: AppColors.primaryGreen,
              unselectedLabelColor: Colors.black,
              tabs: [
                Tab(
                  child: Column(
                    children: [
                      Text(
                        'Review',
                        style: title,
                      ),
                      Text(
                        '(Top 50)',
                        style: subtitle,
                      )
                    ],
                  ),
                ),
                Tab(
                  child: Column(
                    children: [
                      Text(
                        'Photos',
                        style: title,
                      ),
                      Text(
                        '(Top 50)',
                        style: subtitle,
                      )
                    ],
                  ),
                ),
                Tab(
                  child: Column(
                    children: [
                      Text(
                        'Blogger',
                        style: title,
                      ),
                      Text(
                        '(Top 30)',
                        style: subtitle,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          body: TabBarView(
            children: [
              SingleChildScrollView(
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: const ScrollPhysics(),
                  itemCount: reviewList.length,
                  itemBuilder: (context, index) {
                    return LeaderboardTile(
                      id: reviewList[index]['id'] ?? '',
                      image: reviewList[index]['image'] ?? '',
                      name: reviewList[index]['name'] ?? '',
                      review: reviewList[index]['review'] ?? '',
                      photos: reviewList[index]['photos'] ?? '',
                      foodietype: reviewList[index]['foodietype'] ?? '',
                      followed: reviewList[index]['followed'] ?? '',
                    );
                  },
                ),
              ),
              const Text('Tab'),
              const Text('Tab 3')
            ],
          ),
        ),
      ),
    );
  }
}
