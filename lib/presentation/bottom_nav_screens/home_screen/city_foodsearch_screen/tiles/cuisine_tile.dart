import 'package:capi_restro/core/core.dart';
import 'package:capi_restro/presentation/bottom_nav_screens/home_screen/city_foodsearch_screen/json/cuisine/cuisine_list.dart';
import 'package:flutter/material.dart';

class CuisineTile extends StatelessWidget {
  const CuisineTile({
    super.key,
    required this.cuisinelistdata,
    required this.color,
  });
  final CuisineListData cuisinelistdata;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: color,
      ),
      child: Text(
        cuisinelistdata.name,
        style: Theme.of(context).textTheme.bodyText1?.copyWith(
              color: AppColors.surfaceWhite,
            ),
      ),
    );
  }
}
