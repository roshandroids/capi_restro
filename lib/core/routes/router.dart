import 'package:capi_restro/core/routes/not_found_screen.dart';
import 'package:capi_restro/core/routes/route_paths.dart';
import 'package:capi_restro/pages/pages.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

final goRouterProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        path: RoutePaths.landingRoute.path,
        name: RoutePaths.landingRoute.routeName,
        builder: (context, state) => const LandingScreen(),
      ),
    ],
    errorBuilder: (context, state) => const NotFoundScreen(),
  );
});
