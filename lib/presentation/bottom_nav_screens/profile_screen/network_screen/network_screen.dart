import 'package:capi_restro/core/core.dart';
import 'package:capi_restro/presentation/bottom_nav_screens/leaderboard_screen/json/leaderboard_list.dart';
import 'package:capi_restro/presentation/bottom_nav_screens/leaderboard_screen/leaderboard_tile.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NetworkScreen extends StatefulWidget {
  const NetworkScreen({
    super.key,
    required this.followers,
    required this.following,
  });

  final String followers;
  final String following;

  @override
  State<NetworkScreen> createState() => _NetworkScreenState();
}

class _NetworkScreenState extends State<NetworkScreen>
    with SingleTickerProviderStateMixin {
  late TabController controller;

  void _handleTabSelection() {
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 2, vsync: this);
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
    final network = int.parse(widget.followers) + int.parse(widget.following);
    return SafeArea(
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          backgroundColor: AppColors.lightGrey,
          appBar: AppBar(
            backgroundColor: AppColors.surfaceWhite,
            leading: GestureDetector(
              onTap: () => context.go('/profile'),
              child: const Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
            ),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Network',
                  style: Theme.of(context).textTheme.headline5?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: AppColors.iconBlack,
                        fontFamily: 'Quicksand',
                      ),
                ),
                Text(
                  network.toString(),
                  style: Theme.of(context).textTheme.titleSmall?.copyWith(
                        fontWeight: FontWeight.w700,
                        color: AppColors.borderGrey,
                        fontFamily: 'Quicksand',
                      ),
                ),
              ],
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
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Followers',
                        style: title,
                      ),
                      Text(
                        widget.followers,
                        style: subtitle,
                      )
                    ],
                  ),
                ),
                Tab(
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Following',
                        style: title,
                      ),
                      Text(
                        widget.following,
                        style: subtitle,
                      )
                    ],
                  ),
                ),
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
              const Text('Tab')
            ],
          ),
        ),
      ),
    );
  }
}
