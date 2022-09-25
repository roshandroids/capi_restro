import 'package:capi_restro/core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(Assets.map),
              const SizedBox(height: 10),
              Text(
                'Hi, nice to meet you!',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headline6?.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
              ),
              const SizedBox(height: 10),
              Text(
                'Set your location to start exploring restaurants around you',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyText1?.copyWith(
                      color: AppColors.iconBlack,
                      fontWeight: FontWeight.w600,
                    ),
              ),
              const SizedBox(height: 30),
              CustomButton(
                title: 'Use current location',
                btnColor: AppColors.primaryGreen,
                textColor: AppColors.surfaceWhite,
                onTap: () => context.push(RoutePaths.locationPickerRoute.path),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
