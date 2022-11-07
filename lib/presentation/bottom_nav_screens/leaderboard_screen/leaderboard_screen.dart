import 'package:capi_restro/presentation/bottom_nav_screens/leaderboard_screen/json/leaderboard_list.dart';
import 'package:flutter/material.dart';
import 'package:capi_restro/core/core.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_svg/svg.dart';

class LeaderboardScreen extends StatelessWidget {
  const LeaderboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Remove the debug banner
      debugShowCheckedModeBanner: false,
      title: 'Leaderboards',
      // theme: ThemeData(primarySwatch: Colors.grey),

      home: const LeaderboardPage(),
    );
  }
}

class LeaderboardPage extends StatefulWidget {
  const LeaderboardPage({super.key});

  @override
  State<LeaderboardPage> createState() => _LeaderboardPageState();
}

class _LeaderboardPageState extends State<LeaderboardPage>
    with SingleTickerProviderStateMixin {
  late TabController controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
            // const Icon(
            //   Ionicons.ios_location,
            //   color: AppColors.primaryGreen,
            //   size: 30,
            // ),
            title: Text(
              'Top Foodies',
              // textAlign: TextAlign.right,
              style: Theme.of(context).textTheme.headline5?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: AppColors.iconBlack,
                    fontFamily: 'Quicksand',
                  ),
            ),
            bottom: TabBar(
                // labelStyle: TextStyle(color: AppColors.primaryGreen),
                tabs: [
                  Tab(
                      child: Column(
                    children: [
                      Text('Reviews',
                          style:
                              Theme.of(context).textTheme.titleMedium?.copyWith(
                                    fontWeight: FontWeight.w400,
                                  )),
                      Text('(Top 50)',
                          style: Theme.of(context)
                              .textTheme
                              .titleSmall
                              ?.copyWith(
                                fontWeight: FontWeight.w400,
                              )
                              .copyWith(color: AppColors.borderGrey))
                    ],
                  )),
                  Tab(
                      child: Column(
                    children: [
                      Text('Photos',
                          style:
                              Theme.of(context).textTheme.titleMedium?.copyWith(
                                    fontWeight: FontWeight.w400,
                                  )),
                      Text('(Top 50)',
                          style: Theme.of(context)
                              .textTheme
                              .titleSmall
                              ?.copyWith(
                                fontWeight: FontWeight.w400,
                              )
                              .copyWith(color: AppColors.borderGrey))
                    ],
                  )),
                  Tab(
                      child: Column(
                    children: [
                      Text('Blogger',
                          style:
                              Theme.of(context).textTheme.titleMedium?.copyWith(
                                    fontWeight: FontWeight.w400,
                                  )),
                      Text('(Top 30)',
                          style: Theme.of(context)
                              .textTheme
                              .titleSmall
                              ?.copyWith(
                                fontWeight: FontWeight.w400,
                              )
                              .copyWith(color: AppColors.borderGrey))
                    ],
                  ))
                ]),
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
                // ],
                // ),
                // ),
              ),
              Text('Tab'),
              Text('Tab 3')
            ],
          )),
    ));
  }
}

class LeaderboardTile extends StatelessWidget {
  const LeaderboardTile({
    super.key,
    required this.id,
    required this.name,
    required this.image,
    required this.review,
    required this.photos,
    required this.foodietype,
    required this.followed,
  });
  final String id;
  final String name;
  final String image;
  final String review;
  final String photos;
  final String foodietype;
  final String followed;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Color(0xff173143),
            ),
            title: Row(children: [
              Text(name),
              const Spacer(),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 0),
                decoration: BoxDecoration(
                  color: (followed == 'false') ? AppColors.primaryGreen : null,
                  border: Border.all(
                    color: AppColors.primaryGreen,
                    width: 1,
                  ),
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                ),
                child: Text(
                  'Follow',
                  style: Theme.of(context).textTheme.subtitle2?.copyWith(
                        fontWeight: FontWeight.w400,
                        color: (followed == 'false')
                            ? Colors.white
                            : AppColors.primaryGreen,
                      ),
                ),
              ),
            ]),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('$review reviews, $photos photos'),
                Row(
                  children: [
                    Text(
                      (foodietype == '1')
                          ? 'Diamond Foodie'
                          : (foodietype == '2')
                              ? 'Gold Foodie'
                              : (foodietype == '3')
                                  ? 'Silver Foodie'
                                  : 'None',
                      style: Theme.of(context).textTheme.subtitle2?.copyWith(
                            fontWeight: FontWeight.w400,
                            color: foodietypeColor(),
                          ),
                    ),
                    const Spacer(),
                    // const Icon(Icons.bookmark)
                    Text('# $foodietype',
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(
                            fontWeight: FontWeight.w400,
                            color: foodietypeColor()))
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Color foodietypeColor() {
    return (foodietype == '1')
        ? AppColors.primaryGreen
        : (foodietype == '2')
            ? Colors.lightGreen
            : (foodietype == '3')
                ? Colors.lightBlue
                : AppColors.borderGrey;
  }
}
