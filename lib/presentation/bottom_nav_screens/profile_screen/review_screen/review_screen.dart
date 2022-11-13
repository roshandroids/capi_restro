import 'package:capi_restro/core/core.dart';
import 'package:capi_restro/core/utils/foodietype_name.dart';
import 'package:capi_restro/presentation/bottom_nav_screens/profile_screen/review_screen/review_items.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class ReviewScreen extends StatelessWidget {
  const ReviewScreen({
    super.key,
    required this.followers,
    required this.following,
    required this.reviews,
    required this.comment,
    required this.photos,
    required this.foodietype,
  });

  final String followers;
  final String following;
  final String reviews;
  final String comment;
  final String photos;
  final String foodietype;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.surfaceWhite,
      body: SingleChildScrollView(
        child: Column(
          children: [
            ColoredBox(
              color: foodietypeColor(foodietype),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {
                          context.go('/profile');
                        },
                        icon: const Icon(
                          Icons.arrow_back,
                          color: AppColors.surfaceWhite,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 40),
                  SvgPicture.asset(Assets.trophylevel),
                  const SizedBox(height: 20),
                  FoodietypeName(
                    foodietype: foodietype,
                    styles: Theme.of(context).textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.w700,
                          color: AppColors.surfaceWhite,
                        ),
                    addtext: ' level',
                  ),
                  const SizedBox(height: 40),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Text(
              'View My Level',
              style: Theme.of(context).textTheme.titleSmall?.copyWith(
                    fontWeight: FontWeight.w900,
                  ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ReviewPageItems(items: reviews, text: 'Reviews'),
                ReviewPageItems(items: comment, text: 'Comments'),
                ReviewPageItems(items: photos, text: 'Photos'),
                ReviewPageItems(
                  items:
                      (int.parse(followers) + int.parse(following)).toString(),
                  text: 'Followers',
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 2,
              color: AppColors.lightGrey,
            ),
            const SizedBox(
              height: 20,
            ),
            LinearPercentIndicator(
              //leaner progress bar
              animation: true,
              animationDuration: 1000,
              lineHeight: 10,
              progressColor: AppColors.primaryGreen,
              percent: 40 / 100,
              barRadius: const Radius.circular(20),
              backgroundColor: AppColors.lightGrey,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Silver Level',
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                              fontWeight: FontWeight.w900,
                              color: Colors.black,
                            ),
                      ),
                      Text(
                        '1200 points',
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                              fontWeight: FontWeight.bold,
                              color: AppColors.borderGrey,
                            ),
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Gold Level',
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                              fontWeight: FontWeight.w900,
                              color: Colors.black,
                            ),
                      ),
                      Text(
                        '1500 points',
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                              fontWeight: FontWeight.bold,
                              color: AppColors.borderGrey,
                            ),
                      )
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            )
          ],
        ),
      ),
    );
  }
}
