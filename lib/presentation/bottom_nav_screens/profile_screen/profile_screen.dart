import 'package:capi_restro/core/core.dart';
import 'package:capi_restro/core/utils/foodietype_color.dart';
import 'package:capi_restro/core/utils/foodietype_name.dart';
import 'package:capi_restro/presentation/bottom_nav_screens/profile_screen/json/profile_user_data.dart';
import 'package:capi_restro/presentation/bottom_nav_screens/profile_screen/profile_tile.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({
    super.key,
    required this.profileUserData,
  });
  final ProfileUserData profileUserData;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.arrow_back,
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: const Padding(
                    padding: EdgeInsets.all(10),
                    child: Text('Edit'),
                  ),
                )
              ],
            ),
            const SizedBox(height: 40),
            const CircleAvatar(
              backgroundColor: Color(0xff173143),
              radius: 70,
            ),
            const SizedBox(height: 20),
            Text(
              profileUserData.name,
              style: Theme.of(context).textTheme.headline6?.copyWith(
                    fontWeight: FontWeight.w900,
                  ),
            ),
            const SizedBox(height: 5),
            Text(
              profileUserData.place ?? '',
              style: Theme.of(context).textTheme.subtitle1?.copyWith(
                    fontWeight: FontWeight.w500,
                    color: AppColors.borderGrey,
                  ),
            ),
            const SizedBox(height: 40),
            Container(
              height: 2,
              color: AppColors.lightGrey,
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () => context.push(RoutePaths.networkscreenRoute.path),
                  child: Column(
                    children: [
                      const Icon(Icons.person_outline),
                      const Text('Network'),
                      Text(profileUserData.network ?? '')
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () => context.go('/reviewscreen'),
                  child: Column(
                    children: [
                      const Icon(Icons.star_border_outlined),
                      const Text('My Review'),
                      Text(profileUserData.reviews ?? '')
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () => context.go('/reviewscreen'),
                  child: Column(
                    children: [
                      Icon(
                        Icons.emoji_events_outlined,
                        color: foodietypeColor(profileUserData.foodietype),
                      ),
                      const Text('My Level'),
                      FoodietypeName(
                        foodietype: profileUserData.foodietype ?? '',
                        // addtext: '',
                      )
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(height: 20),
            Container(
              height: 2,
              color: AppColors.lightGrey,
            ),
            const SizedBox(height: 20),
            ListView.builder(
              shrinkWrap: true,
              physics: const ScrollPhysics(),
              itemCount: profileOptionList.length,
              itemBuilder: (context, index) {
                return ProfileOptions(index: index);
              },
            ),
          ],
        ),
      ),
    );
  }
}
