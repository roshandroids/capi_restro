import 'package:capi_restro/core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DiscoveryTile extends StatelessWidget {
  const DiscoveryTile({
    super.key,
    required this.name,
    required this.image,
    required this.place,
  });
  final String name;
  final String image;
  final String place;

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: AppColors.borderGrey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 20),
          SvgPicture.asset(image),
          const SizedBox(height: 20),
          Text(
            name,
            style: Theme.of(context)
                .textTheme
                .subtitle1
                ?.copyWith(fontWeight: FontWeight.w700),
          ),
          const SizedBox(height: 5),
          Text(
            '$place place',
            style: Theme.of(context).textTheme.subtitle2?.copyWith(
                  fontWeight: FontWeight.w700,
                  color: AppColors.borderGrey,
                ),
          ),
        ],
      ),
    );
  }
}
