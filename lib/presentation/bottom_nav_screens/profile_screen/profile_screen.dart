import 'package:capi_restro/core/core.dart';
import 'package:capi_restro/core/utils/foodietype_color.dart';
import 'package:capi_restro/core/utils/foodietype_name.dart';
import 'package:capi_restro/presentation/bottom_nav_screens/profile_screen/profile_tile.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({
    super.key,
    required this.id,
    required this.name,
    required this.image,
    required this.reviews,
    required this.network,
    required this.followers,
    required this.place,
    required this.foodietype,
    required this.following,
  });
  final String id;
  final String name;
  final String image;
  final String reviews;
  final String network;
  final String followers;
  final String place;
  final String foodietype;
  final String following;
  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
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
              widget.name,
              style: Theme.of(context).textTheme.headline6?.copyWith(
                    fontWeight: FontWeight.w900,
                  ),
            ),
            const SizedBox(height: 5),
            Text(
              widget.place,
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
                      Text(widget.network)
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () => context.go('/reviewscreen'),
                  child: Column(
                    children: [
                      const Icon(Icons.star_border_outlined),
                      const Text('My Review'),
                      Text(widget.reviews)
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () => context.go('/reviewscreen'),
                  child: Column(
                    children: [
                      Icon(
                        Icons.emoji_events_outlined,
                        color: foodietypeColor(widget.foodietype),
                      ),
                      const Text('My Level'),
                      FoodietypeName(
                        foodietype: widget.foodietype,
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
