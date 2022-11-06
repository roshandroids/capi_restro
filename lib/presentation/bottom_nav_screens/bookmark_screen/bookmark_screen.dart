import 'package:flutter/material.dart';
import 'package:capi_restro/core/core.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:go_router/go_router.dart';
import 'package:capi_restro/presentation/bottom_nav_screens/bookmark_screen/json/bookmark_list.dart';
import 'package:flutter_svg/svg.dart';

class BookmarkScreen extends StatelessWidget {
  const BookmarkScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Remove the debug banner
      debugShowCheckedModeBanner: false,
      title: 'Bookmarks',
      theme: ThemeData(primarySwatch: Colors.grey),

      home: const BookmarkPage(),
    );
  }
}

class BookmarkPage extends StatefulWidget {
  const BookmarkPage({super.key});

  @override
  State<BookmarkPage> createState() => _BookmarkPageState();
}

class _BookmarkPageState extends State<BookmarkPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightGrey,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            pinned: true,
            centerTitle: false,
            backgroundColor: AppColors.surfaceWhite,
            leading: const Icon(
              Ionicons.ios_location,
              color: AppColors.primaryGreen,
              size: 30,
            ),
            title: Text(
              'Bookmarks',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headline4?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: AppColors.iconBlack,
                  ),
            ),
            bottom: AppBar(
              backgroundColor: AppColors.surfaceWhite,
              title: Container(
                width: double.infinity,
                height: 40,
                color: AppColors.lightGrey,
                child: const Center(
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      contentPadding: EdgeInsets.fromLTRB(12, 0, 0, 0),
                      hintText: 'Search for something',
                      prefixIcon: Icon(Icons.search),

                      // suffixIcon: Icon(Icons.camera_alt),
                    ),
                  ),
                ),
              ),
            ),
          ),
          // Other Sliver Widgets
          SliverList(
            delegate: SliverChildListDelegate([
              Container(
                padding: const EdgeInsets.all(10),
                // color: AppColors.lightGrey,
                width: (MediaQuery.of(context).size.width ~/ 1.2).toDouble(),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.centerRight,
                      child: GestureDetector(
                        // ignore: avoid_print
                        onTap: () => {print('Tapped in filter')},
                        child: Text(
                          '  Filter  ',
                          style:
                              Theme.of(context).textTheme.titleLarge?.copyWith(
                                    fontWeight: FontWeight.w800,
                                  ),
                        ),
                      ),
                    ),
                    ListView.builder(
                      shrinkWrap: true,
                      physics: const ScrollPhysics(),
                      itemCount: bookmarkList.length,
                      itemBuilder: (context, index) {
                        return BookmarkTile(
                          id: bookmarkList[index]['id'] ?? '',
                          image: bookmarkList[index]['image'] ?? '',
                          name: bookmarkList[index]['name'] ?? '',
                          place: bookmarkList[index]['place'] ?? '',
                          starttime: bookmarkList[index]['starttime'] ?? '',
                          endtime: bookmarkList[index]['endtime'] ?? '',
                          rating: bookmarkList[index]['rating'] ?? '',
                          type: bookmarkList[index]['type'] ?? '',
                        );
                      },
                    ),
                  ],
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}

class BookmarkTile extends StatelessWidget {
  const BookmarkTile({
    super.key,
    required this.id,
    required this.name,
    required this.image,
    required this.place,
    required this.starttime,
    required this.endtime,
    required this.rating,
    required this.type,
  });
  final String id;
  final String name;
  final String image;
  final String place;
  final String starttime;
  final String endtime;
  final String rating;
  final String type;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          ListTile(
            leading: SvgPicture.asset(image),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      '$starttime to $endtime',
                      style: Theme.of(context).textTheme.titleSmall?.copyWith(
                            fontWeight: FontWeight.w400,
                            color: AppColors.borderGrey,
                          ),
                    ),
                    const Spacer(),
                    Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: ((int.parse(id)).isOdd)
                            ? AppColors.primaryGreen
                            : AppColors.errorRed,
                        border: Border.all(
                          color: ((int.parse(id)).isOdd)
                              ? AppColors.primaryGreen
                              : AppColors.errorRed,
                          width: 0.1,
                        ),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                      ),
                      child: Text(
                        rating,
                        style: Theme.of(context).textTheme.subtitle2?.copyWith(
                              fontWeight: FontWeight.w700,
                              color: AppColors.surfaceWhite,
                            ),
                      ),
                    ),
                  ],
                ),
                Text(name)
              ],
            ),
            subtitle: Row(
              children: [
                Text(
                  place,
                  style: Theme.of(context).textTheme.titleSmall?.copyWith(
                        fontWeight: FontWeight.w400,
                        color: AppColors.borderGrey,
                      ),
                ),
                const Spacer(),
                const Icon(Icons.bookmark)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
