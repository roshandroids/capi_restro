import 'package:capi_restro/core/core.dart';
import 'package:capi_restro/core/utils/foodietype_color.dart';
import 'package:capi_restro/core/utils/foodietype_name.dart';
import 'package:flutter/material.dart';

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
            leading: const CircleAvatar(
              backgroundColor: Color(0xff173143),
            ),
            title: Row(
              children: [
                Text(name),
                const Spacer(),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  decoration: BoxDecoration(
                    color:
                        (followed == 'false') ? AppColors.primaryGreen : null,
                    border: Border.all(
                      color: AppColors.primaryGreen,
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
              ],
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('$review reviews, $photos photos'),
                Row(
                  children: [
                    FoodietypeName(
                      foodietype: foodietype,
                      styles: Theme.of(context).textTheme.subtitle2?.copyWith(
                            fontWeight: FontWeight.w400,
                            color: foodietypeColor(foodietype),
                          ),
                      addtext: ' Foodie',
                    ),
                    const Spacer(),
                    Text(
                      '# $foodietype',
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                            fontWeight: FontWeight.w400,
                            color: foodietypeColor(foodietype),
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
