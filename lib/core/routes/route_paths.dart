import 'package:capi_restro/core/routes/app_route_model.dart';

class RoutePaths {
  static final AppRouteModel landingRoute =
      AppRouteModel(routeName: 'landingPage', path: '/');
  static final AppRouteModel errorRoute =
      AppRouteModel(routeName: 'error', path: '/error');
}
