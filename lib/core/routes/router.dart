import 'package:capi_restro/application/application.dart';
import 'package:capi_restro/core/routes/not_found_screen.dart';
import 'package:capi_restro/core/routes/route_paths.dart';
import 'package:capi_restro/presentation/bottom_nav_screens/profile_screen/json/profile_user_data.dart';
import 'package:capi_restro/presentation/bottom_nav_screens/profile_screen/network_screen/network_screen.dart';
import 'package:capi_restro/presentation/bottom_nav_screens/profile_screen/review_screen/review_screen.dart';
import 'package:capi_restro/presentation/pages.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

final goRouterProvider = Provider<GoRouter>((ref) {
  const scaffoldKey = ValueKey<String>('App scaffold');
  return GoRouter(
    initialLocation: RoutePaths.splashRoute.path,
    routes: [
      GoRoute(
        path: RoutePaths.splashRoute.path,
        name: RoutePaths.splashRoute.routeName,
        pageBuilder: (context, state) => FadeTransitionPage(
          key: state.pageKey,
          child: const SplashScreen(),
        ),
        redirect: (_, __) => RoutePaths.landingRoute.path,
      ),
      GoRoute(
        path: RoutePaths.landingRoute.path,
        name: RoutePaths.landingRoute.routeName,
        pageBuilder: (context, state) => FadeTransitionPage(
          key: state.pageKey,
          child: const LandingScreen(),
        ),
      ),
      GoRoute(
        path: RoutePaths.loginRoute.path,
        name: RoutePaths.loginRoute.routeName,
        pageBuilder: (context, state) => FadeTransitionPage(
          key: state.pageKey,
          child: const LoginScreen(),
        ),
      ),
      GoRoute(
        path: RoutePaths.signupRoute.path,
        name: RoutePaths.signupRoute.routeName,
        pageBuilder: (context, state) => FadeTransitionPage(
          key: state.pageKey,
          child: const SignUpScreen(),
        ),
      ),
      GoRoute(
        path: RoutePaths.forgetpasswordRoute.path,
        name: RoutePaths.forgetpasswordRoute.routeName,
        pageBuilder: (context, state) => FadeTransitionPage(
          key: state.pageKey,
          child: const ForgetPasswordScreen(),
        ),
      ),
      GoRoute(
        path: RoutePaths.verifytotpRoute.path,
        name: RoutePaths.verifytotpRoute.routeName,
        pageBuilder: (context, state) => FadeTransitionPage(
          key: state.pageKey,
          child: const VerifyOtpScreen(),
        ),
      ),
      GoRoute(
        path: RoutePaths.changePasswordRoute.path,
        name: RoutePaths.changePasswordRoute.routeName,
        pageBuilder: (context, state) => FadeTransitionPage(
          key: state.pageKey,
          child: const ChangePasswordScreen(),
        ),
      ),
      GoRoute(
        path: RoutePaths.rootRoute.path,
        name: RoutePaths.rootRoute.routeName,
        redirect: (_, __) => RoutePaths.homeRoute.path,
      ),
      GoRoute(
        path: RoutePaths.homeRoute.path,
        name: RoutePaths.homeRoute.routeName,
        pageBuilder: (context, state) => FadeTransitionPage(
          key: scaffoldKey,
          child: const RootScreen(
            selectedTab: Tabs.home,
            child: HomeScreen(),
          ),
        ),
      ),
      GoRoute(
        path: RoutePaths.discoveryRoute.path,
        name: RoutePaths.discoveryRoute.routeName,
        pageBuilder: (context, state) => FadeTransitionPage(
          key: scaffoldKey,
          child: const RootScreen(
            selectedTab: Tabs.discovery,
            child: DiscoveryScreen(),
          ),
        ),
      ),
      GoRoute(
        path: RoutePaths.bookmarkRoute.path,
        name: RoutePaths.bookmarkRoute.routeName,
        pageBuilder: (context, state) => FadeTransitionPage(
          key: scaffoldKey,
          child: const RootScreen(
            selectedTab: Tabs.bookmark,
            child: BookmarkScreen(),
          ),
        ),
      ),
      GoRoute(
        path: RoutePaths.topFoodieRoute.path,
        name: RoutePaths.topFoodieRoute.routeName,
        pageBuilder: (context, state) => FadeTransitionPage(
          key: scaffoldKey,
          child: const RootScreen(
            selectedTab: Tabs.topFoodie,
            child: LeaderboardScreen(),
          ),
        ),
      ),
      GoRoute(
        path: RoutePaths.profileRoute.path,
        name: RoutePaths.profileRoute.routeName,
        pageBuilder: (context, state) => FadeTransitionPage(
          key: scaffoldKey,
          child: RootScreen(
            selectedTab: Tabs.profile,
            child: ProfileScreen(
              id: profileuserData[0]['id'] ?? '',
              image: profileuserData[0]['image'] ?? '',
              name: profileuserData[0]['name'] ?? '',
              reviews: profileuserData[0]['reviews'] ?? '',
              network: profileuserData[0]['network'] ?? '',
              foodietype: profileuserData[0]['foodietype'] ?? '',
              place: profileuserData[0]['place'] ?? '',
              followers: profileuserData[0]['followers'] ?? '',
              following: profileuserData[0]['following'] ?? '',
            ),
          ),
        ),
      ),
      GoRoute(
        path: RoutePaths.networkscreenRoute.path,
        name: RoutePaths.networkscreenRoute.routeName,
        pageBuilder: (context, state) => FadeTransitionPage(
          key: state.pageKey,
          child: RootScreen(
            selectedTab: Tabs.profile,
            child: NetworkScreen(
              followers: profileuserData[0]['followers'] ?? '',
              following: profileuserData[0]['following'] ?? '',
            ),
          ),
        ),
      ),
      GoRoute(
        path: RoutePaths.reviewscreenRoute.path,
        name: RoutePaths.reviewscreenRoute.routeName,
        pageBuilder: (context, state) => FadeTransitionPage(
          key: scaffoldKey,
          child: RootScreen(
            selectedTab: Tabs.profile,
            child: ReviewScreen(
              reviews: profileuserData[0]['reviews'] ?? '',
              comment: profileuserData[0]['comment'] ?? '',
              photos: profileuserData[0]['photos'] ?? '',
              followers: profileuserData[0]['followers'] ?? '',
              following: profileuserData[0]['following'] ?? '',
              foodietype: profileuserData[0]['foodietype'] ?? '',
            ),
          ),
        ),
      ),
      GoRoute(
        path: RoutePaths.locationPickerRoute.path,
        name: RoutePaths.locationPickerRoute.routeName,
        pageBuilder: (context, state) => FadeTransitionPage(
          key: state.pageKey,
          child: const LocationPickerScreen(),
        ),
      ),
    ],
    errorBuilder: (context, state) => const NotFoundScreen(),
    redirect: (BuildContext context, GoRouterState state) {
      // final auth = ref.read(authControllerProvider);
      // final signedIn = auth.signedIn;
      // if (signedIn) {
      //   return RoutePaths.homeRoute.path;
      // }

      return null;
    },
    refreshListenable: ref.watch(authControllerProvider),
    debugLogDiagnostics: kDebugMode,
  );
});

class FadeTransitionPage extends CustomTransitionPage<void> {
  FadeTransitionPage({
    required LocalKey super.key,
    required super.child,
  }) : super(
          transitionsBuilder: (c, animation, a2, child) => FadeTransition(
            opacity: animation.drive(_curveTween),
            child: child,
          ),
        );

  static final _curveTween = CurveTween(curve: Curves.easeIn);
}
