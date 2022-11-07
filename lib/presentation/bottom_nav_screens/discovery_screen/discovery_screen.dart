import 'package:capi_restro/core/core.dart';
import 'package:capi_restro/presentation/bottom_nav_screens/discovery_screen/discovery_tile.dart';
import 'package:capi_restro/presentation/bottom_nav_screens/discovery_screen/json/discover_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:go_router/go_router.dart';

class DiscoveryScreen extends StatelessWidget {
  const DiscoveryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightGrey,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.surfaceWhite,
        leading: IconButton(
          splashColor: AppColors.transparent,
          focusColor: AppColors.transparent,
          highlightColor: AppColors.transparent,
          onPressed: () => context.pop(),
          icon: const Icon(
            Ionicons.ios_location,
            color: AppColors.primaryGreen,
            size: 30,
          ),
        ),
        title: Text(
          'Discovery',
          style: Theme.of(context).textTheme.headline5?.copyWith(
                fontWeight: FontWeight.bold,
                color: AppColors.iconBlack,
              ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 15),
        child: GridView.builder(
          physics: const ScrollPhysics(),
          shrinkWrap: true,
          itemCount: discoveryList.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: MediaQuery.of(context).size.width ~/ 155,
          ),
          itemBuilder: (context, index) => DiscoveryTile(
            image: discoveryList[index]['image'] ?? '',
            name: discoveryList[index]['name'] ?? '',
            place: discoveryList[index]['place'] ?? '',
          ),
        ),
        // ],
      ),
      // ),
    );
  }
}
