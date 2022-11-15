import 'package:capi_restro/core/core.dart';
import 'package:capi_restro/presentation/bottom_nav_screens/home_screen/city_foodsearch_screen/json/brand/brand_outlet_list.dart';
import 'package:flutter/material.dart';

class PopularBrandTile extends StatelessWidget {
  const PopularBrandTile({
    super.key,
    required this.brandlistdata,
    required this.color,
  });
  final BrandListData brandlistdata;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      // width: 145,
      // height: 1000,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: color,
      ),
      child: Column(
        children: [
          Container(
            width: 145,
          ),
          const Spacer(),
          Container(
            padding: const EdgeInsets.all(10),
            child: Text(
              '${brandlistdata.outlets} outlets',
              style: Theme.of(context).textTheme.bodyText1?.copyWith(
                    color: AppColors.surfaceWhite,
                  ),
            ),
          )
        ],
      ),
    );
  }
}
