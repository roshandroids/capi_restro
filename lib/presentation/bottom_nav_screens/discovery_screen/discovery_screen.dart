import 'package:flutter/material.dart';
import 'package:capi_restro/core/core.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:go_router/go_router.dart';
import 'package:capi_restro/presentation/bottom_nav_screens/discovery_screen/json/discover_list.dart';
import 'package:flutter_svg/svg.dart';

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
        child:
            // Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            // children: [
            // const SizedBox(height: 20),
            GridView.builder(
          // scrollDirection: Axis.vertical,
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
