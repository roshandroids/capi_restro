import 'package:capi_restro/core/core.dart';
import 'package:capi_restro/core/utils/foodietype_color.dart';
import 'package:capi_restro/core/utils/foodietype_name.dart';
import 'package:capi_restro/presentation/bottom_nav_screens/leaderboard_screen/json/leaderboard_list.dart';
import 'package:flutter/material.dart';

class LeaderboardTile extends StatelessWidget {
  const LeaderboardTile({
    super.key,
    required this.reviewlistdata,
  });
  final ReviewListData reviewlistdata;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          ListTile(
            leading: const CircleAvatar(
              backgroundColor: Color(0xff173143),
            ),
            title: Row(
              children: [
                Text(reviewlistdata.name),
                const Spacer(),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  decoration: BoxDecoration(
                    color: (reviewlistdata.followed == 'false')
                        ? AppColors.primaryGreen
                        : null,
                    border: Border.all(
                      color: AppColors.primaryGreen,
                    ),
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Text(
                    'Follow',
                    style: Theme.of(context).textTheme.subtitle2?.copyWith(
                          fontWeight: FontWeight.w400,
                          color: (reviewlistdata.followed == 'false')
                              ? Colors.white
                              : AppColors.primaryGreen,
                        ),
                  ),
                ),
              ],
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${reviewlistdata.review} reviews, ${reviewlistdata.photos} photos',
                ),
                Row(
                  children: [
                    FoodietypeName(
                      foodietype: reviewlistdata.foodietype ?? '',
                      styles: Theme.of(context).textTheme.subtitle2?.copyWith(
                            fontWeight: FontWeight.w400,
                            color: foodietypeColor(
                              reviewlistdata.foodietype ?? '1',
                            ),
                          ),
                      addtext: ' Foodie',
                    ),
                    const Spacer(),
                    Text(
                      '# ${reviewlistdata.foodietype}',
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                            fontWeight: FontWeight.w400,
                            color: foodietypeColor(
                              reviewlistdata.foodietype ?? '',
                            ),
                          ),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
