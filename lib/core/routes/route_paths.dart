import 'package:capi_restro/core/routes/app_route_model.dart';

class RoutePaths {
  static final AppRouteModel landingRoute =
      AppRouteModel(routeName: 'landingPage', path: '/');
  static final AppRouteModel loginRoute =
      AppRouteModel(routeName: 'login', path: '/login');
  static final AppRouteModel signupRoute =
      AppRouteModel(routeName: 'signup', path: '/signup');
  static final AppRouteModel forgetpasswordRoute =
      AppRouteModel(routeName: 'forgetpassword', path: '/forgetpassword');
  static final AppRouteModel verifytotpRoute =
      AppRouteModel(routeName: 'verifytotp', path: '/verifytotp');
  static final AppRouteModel errorRoute =
      AppRouteModel(routeName: 'error', path: '/error');
}
