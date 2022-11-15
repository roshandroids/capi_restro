import 'package:capi_restro/core/core.dart';
import 'package:capi_restro/presentation/bottom_nav_screens/discovery_screen/json/discover_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DiscoveryTile extends StatelessWidget {
  const DiscoveryTile({
    super.key,
    required this.discoverlistdata,
  });
  final DiscoverListData discoverlistdata;

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: AppColors.borderGrey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 20),
          SvgPicture.asset(discoverlistdata.image),
          const SizedBox(height: 20),
          Text(
            discoverlistdata.name,
            style: Theme.of(context)
                .textTheme
                .subtitle1
                ?.copyWith(fontWeight: FontWeight.w700),
          ),
          const SizedBox(height: 5),
          Text(
            '${discoverlistdata.place} place',
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
