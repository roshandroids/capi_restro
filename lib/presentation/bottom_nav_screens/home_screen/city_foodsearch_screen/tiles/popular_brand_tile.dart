import 'package:capi_restro/core/core.dart';
import 'package:flutter/material.dart';

class PopularBrandTile extends StatelessWidget {
  const PopularBrandTile({
    super.key,
    required this.outlets,
    required this.color,
  });
  final String outlets;
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
              '$outlets outlets',
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
