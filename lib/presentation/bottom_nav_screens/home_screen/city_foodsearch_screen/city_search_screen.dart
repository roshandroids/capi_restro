import 'package:capi_restro/core/core.dart';
import 'package:capi_restro/presentation/bottom_nav_screens/home_screen/city_foodsearch_screen/json/brand_outlet_list.dart';
import 'package:capi_restro/presentation/bottom_nav_screens/home_screen/city_foodsearch_screen/json/collection.dart';
import 'package:capi_restro/presentation/bottom_nav_screens/home_screen/city_foodsearch_screen/json/cuisine_list.dart';
import 'package:capi_restro/presentation/bottom_nav_screens/home_screen/city_foodsearch_screen/json/legendary_food_list.dart';
import 'package:capi_restro/presentation/bottom_nav_screens/home_screen/city_foodsearch_screen/json/trending_food_list.dart';
import 'package:capi_restro/presentation/bottom_nav_screens/home_screen/city_foodsearch_screen/tiles/collection_tile.dart';
import 'package:capi_restro/presentation/bottom_nav_screens/home_screen/city_foodsearch_screen/tiles/cuisine_tile.dart';
import 'package:capi_restro/presentation/bottom_nav_screens/home_screen/city_foodsearch_screen/tiles/legendary_tile.dart';
import 'package:capi_restro/presentation/bottom_nav_screens/home_screen/city_foodsearch_screen/tiles/popular_brand_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:go_router/go_router.dart';

List<Color> color = [
  const Color(0xff4F2E19),
  const Color(0xff933017),
  const Color(0xff523B13),
  const Color(0xff794C2F),
  const Color(0xff435124),
  const Color(0xff322216)
];

List<Color> brandcolor = [
  const Color(0xffE8334A),
  const Color(0xffF5821F),
  const Color(0xff63BF67)
];

class CityFoodSearchScreen extends StatelessWidget {
  const CityFoodSearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 235, 233, 233),
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              floating: true,
              pinned: true,
              centerTitle: false,
              backgroundColor: AppColors.surfaceWhite,
              leading: GestureDetector(
                onTap: () => context.push(RoutePaths.locationPickerRoute.path),
                child: const Icon(
                  Ionicons.arrow_back,
                  color: AppColors.primaryGreen,
                  size: 30,
                ),
              ),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'New York City',
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.headline6?.copyWith(
                              fontWeight: FontWeight.bold,
                              color: AppColors.iconBlack,
                              fontFamily: 'Quicksand',
                            ),
                      ),
                      const Spacer(),
                      const Icon(
                        Icons.notifications_outlined,
                        color: Colors.black,
                        size: 20,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Icon(
                        Icons.add_circle_outline,
                        color: AppColors.primaryGreen,
                        size: 20,
                      )
                    ],
                  ),
                  Text(
                    'Your Location',
                    style: Theme.of(context).textTheme.bodyText2?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: AppColors.borderGrey,
                          fontFamily: 'Quicksand',
                        ),
                  )
                ],
              ),
              bottom: AppBar(
                backgroundColor: AppColors.surfaceWhite,
                title: Container(
                  width: double.infinity,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: AppColors.lightGrey,
                  ),
                  child: const Center(
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                        hintText: 'Search for restaurants...',
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
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Text(
                            'Legendary Food',
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium
                                ?.copyWith(
                                  fontWeight: FontWeight.w800,
                                ),
                          ),
                          const Spacer(),
                          Text(
                            'See all',
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium
                                ?.copyWith(
                                  fontWeight: FontWeight.w800,
                                  color: AppColors.primaryGreen,
                                ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        height: 170,
                        child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          physics: const ScrollPhysics(),
                          itemCount: legendaryfoodList.length,
                          separatorBuilder: (context, index) => const SizedBox(
                            width: 10,
                          ),
                          itemBuilder: (context, index) => LegendaryFood(
                            image: legendaryfoodList[index]['image'] ?? '',
                            name: legendaryfoodList[index]['name'] ?? '',
                            place: legendaryfoodList[index]['place'] ?? '',
                            type: legendaryfoodList[index]['type'] ?? '',
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Text(
                            'Trending this week',
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium
                                ?.copyWith(
                                  fontWeight: FontWeight.w800,
                                ),
                          ),
                          const Spacer(),
                          Text(
                            'See all',
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium
                                ?.copyWith(
                                  fontWeight: FontWeight.w800,
                                  color: AppColors.primaryGreen,
                                ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        height: 170,
                        child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          physics: const ScrollPhysics(),
                          itemCount: trendingfoodlist.length,
                          separatorBuilder: (context, index) => const SizedBox(
                            width: 10,
                          ),
                          itemBuilder: (context, index) => LegendaryFood(
                            image: trendingfoodlist[index]['image'] ?? '',
                            name: trendingfoodlist[index]['name'] ?? '',
                            place: trendingfoodlist[index]['place'] ?? '',
                            type: trendingfoodlist[index]['type'] ?? '',
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Text(
                            'Collection by Capi',
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium
                                ?.copyWith(
                                  fontWeight: FontWeight.w800,
                                ),
                          ),
                          const Spacer(),
                          Text(
                            'See all',
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium
                                ?.copyWith(
                                  fontWeight: FontWeight.w800,
                                  color: AppColors.primaryGreen,
                                ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        height: 170,
                        child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          physics: const ScrollPhysics(),
                          itemCount: collectionlist.length,
                          separatorBuilder: (context, index) => const SizedBox(
                            width: 10,
                          ),
                          itemBuilder: (context, index) => CollectionTile(
                            name: collectionlist[index]['name'] ?? '',
                            place: collectionlist[index]['place'] ?? '',
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Text(
                            'Favorite Cuisines',
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium
                                ?.copyWith(
                                  fontWeight: FontWeight.w800,
                                ),
                          ),
                          const Spacer(),
                          Text(
                            'See all',
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium
                                ?.copyWith(
                                  fontWeight: FontWeight.w800,
                                  color: AppColors.primaryGreen,
                                ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        height: 160,
                        width: 500,
                        child: GridView.builder(
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          physics: const ScrollPhysics(),
                          itemCount: collectionlist.length,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 10,
                            childAspectRatio: 0.5,
                          ),
                          itemBuilder: (context, index) => CuisineTile(
                            name: cuisinelist[index]['name'] ?? '',
                            color: color[index],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Text(
                            'Popular Brands',
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium
                                ?.copyWith(
                                  fontWeight: FontWeight.w800,
                                ),
                          ),
                          const Spacer(),
                          Text(
                            'See all',
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium
                                ?.copyWith(
                                  fontWeight: FontWeight.w800,
                                  color: AppColors.primaryGreen,
                                ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        height: 150,
                        child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          physics: const ScrollPhysics(),
                          itemCount: brandlist.length,
                          separatorBuilder: (context, index) => const SizedBox(
                            width: 10,
                          ),
                          itemBuilder: (context, index) => PopularBrandTile(
                            outlets: brandlist[index]['outlets'] ?? '',
                            color: brandcolor[index],
                          ),
                        ),
                      )
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
