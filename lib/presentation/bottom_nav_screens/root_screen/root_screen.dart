import 'package:capi_restro/core/core.dart';
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
        body: child,
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedTab.index,
          type: BottomNavigationBarType.fixed,
          showUnselectedLabels: true,
          showSelectedLabels: true,
          unselectedIconTheme: const IconThemeData(color: AppColors.borderGrey),
          selectedItemColor: AppColors.primaryGreen,
          selectedIconTheme: const IconThemeData(color: AppColors.primaryGreen),
          items: const [
            BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(FontAwesome.home),
            ),
            BottomNavigationBarItem(
              label: 'Location',
              icon: Icon(SimpleLineIcons.location_pin),
            ),
            BottomNavigationBarItem(
              label: 'Bookmark',
              icon: Icon(Octicons.bookmark),
            ),
            BottomNavigationBarItem(
              label: 'Leaderboard',
              icon: Icon(Ionicons.trophy_outline),
            ),
            BottomNavigationBarItem(
              label: 'Profile',
              icon: Icon(MaterialCommunityIcons.account_circle_outline),
            ),
          ],
          onTap: (index) {
            switch (Tabs.values[index]) {
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
        ),
      );
}
