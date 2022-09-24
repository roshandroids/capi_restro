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
      GoRoute(
        path: RoutePaths.loginRoute.path,
        name: RoutePaths.loginRoute.routeName,
        builder: (context, state) => const LoginScreen(),
      ),
      GoRoute(
        path: RoutePaths.signupRoute.path,
        name: RoutePaths.signupRoute.routeName,
        builder: (context, state) => const SignUpScreen(),
      ),
      GoRoute(
        path: RoutePaths.forgetpasswordRoute.path,
        name: RoutePaths.forgetpasswordRoute.routeName,
        builder: (context, state) => const ForgetPasswordScreen(),
      ),
      GoRoute(
        path: RoutePaths.verifytotpRoute.path,
        name: RoutePaths.verifytotpRoute.routeName,
        builder: (context, state) => const VerifyOtpScreen(),
      ),
    ],
    errorBuilder: (context, state) => const NotFoundScreen(),
  );
});
