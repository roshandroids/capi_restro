import 'package:capi_restro/core/core.dart';
import 'package:capi_restro/presentation/bottom_nav_screens/bookmark_screen/bookmark_tile.dart';
import 'package:capi_restro/presentation/bottom_nav_screens/bookmark_screen/json/bookmark_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class BookmarkScreen extends StatelessWidget {
  const BookmarkScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
                'Bookmark',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headline5?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: AppColors.iconBlack,
                      fontFamily: 'Quicksand',
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
                  padding: const EdgeInsets.only(
                    left: 5,
                    right: 5,
                    top: 30,
                    bottom: 5,
                  ),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerRight,
                        child: GestureDetector(
                          onTap: () => {},
                          child: Text(
                            'Filter',
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge
                                ?.copyWith(
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
      ),
    );
  }
}
