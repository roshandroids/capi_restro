import 'package:capi_restro/core/core.dart';
import 'package:capi_restro/pages/landing_screen/widgets/page_view_widget.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({super.key});

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  late PageController _controller;
  double pageOffset = 0;

  final List<Map<String, dynamic>> pageViewItems = [
    {
      'title': 'Quick search',
      'content': 'Set your location to start exploring restaurants around you',
      'asset': Assets.landing1,
    },
    {
      'title': 'Search for a place',
      'content': 'Set your location to start exploring restaurants around you',
      'asset': Assets.landing2,
    },
    {
      'title': 'Variety of food',
      'content': 'Set your location to start exploring restaurants around you',
      'asset': Assets.landing3,
    },
    {
      'title': 'Fast shipping',
      'content': 'Set your location to start exploring restaurants around you',
      'asset': Assets.landing4,
    },
  ];

  @override
  void initState() {
    _controller = PageController()
      ..addListener(() {
        setState(() => pageOffset = _controller.page ?? 0);
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryGreen,
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                controller: _controller,
                itemCount: pageViewItems.length,
                itemBuilder: (context, index) {
                  final pageData = pageViewItems[index];
                  return PageViewWidget(
                    pageData: pageData,
                    offset: pageOffset - index,
                  );
                },
              ),
            ),
            CustomButton(
              title: 'Login',
              margin: const EdgeInsets.symmetric(horizontal: 20),
              onTap: () {
                context.go(RoutePaths.loginRoute.path);
              },
            ),
            const SizedBox(height: 30),
            SmoothPageIndicator(
              controller: _controller, // PageController
              count: pageViewItems.length,
              effect: WormEffect(
                paintStyle: PaintingStyle.fill,
                offset: 1,
                dotColor: AppColors.surfaceWhite.withOpacity(.7),
                activeDotColor: AppColors.surfaceWhite,
                spacing: 10,
                dotHeight: 10,
                dotWidth: 10,
              ), // your preferred effect
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
