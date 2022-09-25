import 'package:capi_restro/application/application.dart';
import 'package:capi_restro/core/routes/not_found_screen.dart';
import 'package:capi_restro/core/routes/route_paths.dart';
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
          child: const RootScreen(
            selectedTab: Tabs.profile,
            child: ProfileScreen(),
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
