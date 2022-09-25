import 'package:adaptive_navigation/adaptive_navigation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

import 'package:go_router/go_router.dart';

enum Tabs { home, discovery, bookmark, topFoodie, profile }

class RootScreen extends StatelessWidget {
  const RootScreen({
    required this.selectedTab,
    required this.child,
    super.key,
  });

  final Tabs selectedTab;
  final Widget child;

  @override
  Widget build(BuildContext context) => Scaffold(
        body: AdaptiveNavigationScaffold(
          selectedIndex: selectedTab.index,
          body: child,
          onDestinationSelected: (idx) {
            switch (Tabs.values[idx]) {
              case Tabs.home:
                context.go('/home');
                break;
              case Tabs.discovery:
                context.go('/discovery');
                break;
              case Tabs.bookmark:
                context.go('/bookmark');
                break;
              case Tabs.topFoodie:
                context.go('/topFoodie');
                break;
              case Tabs.profile:
                context.go('/profile');
                break;
            }
          },
          destinations: const [
            AdaptiveScaffoldDestination(
              title: 'Home',
              icon: FontAwesome.home,
            ),
            AdaptiveScaffoldDestination(
              title: 'Discovery',
              icon: SimpleLineIcons.location_pin,
            ),
            AdaptiveScaffoldDestination(
              title: 'Bookmark',
              icon: Octicons.bookmark,
            ),
            AdaptiveScaffoldDestination(
              title: 'Top Foodie',
              icon: Ionicons.trophy_outline,
            ),
            AdaptiveScaffoldDestination(
              title: 'Profile',
              icon: MaterialCommunityIcons.account_circle_outline,
            ),
          ],
        ),
      );
}
