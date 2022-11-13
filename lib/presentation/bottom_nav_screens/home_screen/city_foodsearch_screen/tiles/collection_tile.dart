import 'package:capi_restro/core/core.dart';
import 'package:flutter/material.dart';

class CollectionTile extends StatelessWidget {
  const CollectionTile({
    super.key,
    required this.name,
    required this.place,
  });
  final String name;
  final String place;
  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      // width: 145,
      // height: 1000,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: const Color(0xff173143),
      ),
      child: Column(
        children: [
          Container(
            width: 145,
          ),
          const Spacer(),
          Container(
            width: 145,
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 2,
                  width: 40,
                  color: AppColors.primaryGreen,
                  padding: const EdgeInsets.symmetric(vertical: 20),
                ),
                Text(
                  name,
                  style: Theme.of(context).textTheme.bodyText1?.copyWith(
                        color: AppColors.surfaceWhite,
                      ),
                ),
                Text(
                  place,
                  style: Theme.of(context).textTheme.bodyText2?.copyWith(
                        color: AppColors.surfaceWhite,
                      ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
