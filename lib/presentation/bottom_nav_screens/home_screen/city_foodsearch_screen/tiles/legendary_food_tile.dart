import 'package:capi_restro/core/core.dart';
import 'package:capi_restro/presentation/bottom_nav_screens/home_screen/city_foodsearch_screen/json/legendary/legendary_food_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LegendaryFood extends StatelessWidget {
  const LegendaryFood({
    super.key,
    required this.legendaryfoodlistdata,
  });
  final LegendaryFoodListData legendaryfoodlistdata;
  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: AppColors.surfaceWhite,
        // border: Border.all(),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 45),
            decoration: const BoxDecoration(
              color: Color(0xff173143),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(5),
                topRight: Radius.circular(5),
              ),
              // border: Border.all(),
            ),
            child: SvgPicture.asset(Assets.diningOut),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  legendaryfoodlistdata.name,
                  style: Theme.of(context).textTheme.subtitle1?.copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                ),
                Text(
                  legendaryfoodlistdata.place ?? '',
                  style: const TextStyle(color: AppColors.borderGrey),
                ),
                Text(
                  legendaryfoodlistdata.type ?? '',
                  style: const TextStyle(color: AppColors.borderGrey),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
