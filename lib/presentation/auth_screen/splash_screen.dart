import 'package:capi_restro/core/core.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryGreen,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Capi Restro',
              style: Theme.of(context).textTheme.headline3?.copyWith(
                fontWeight: FontWeight.w600,
                color: AppColors.surfaceWhite,
                shadows: [
                  const Shadow(
                    offset: Offset(0, 5),
                    blurRadius: 2,
                  ),
                  const Shadow(
                    offset: Offset(0, 6),
                    blurRadius: 3,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Text(
              'Search 🔍 , Locate 🧭, Eat 🍽',
              style: Theme.of(context).textTheme.bodyText1?.copyWith(
                fontWeight: FontWeight.bold,
                color: AppColors.surfaceWhite,
                shadows: [
                  const Shadow(
                    offset: Offset(0, 1),
                    blurRadius: 1,
                  ),
                  const Shadow(
                    offset: Offset(0, 2),
                    blurRadius: 2,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
