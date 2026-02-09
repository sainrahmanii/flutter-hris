import 'package:go_router/go_router.dart';
import 'package:hris/core/constants/constant_routes.dart';
import 'package:hris/features/splash/presentation/pages/splash_screen.dart';

List<RouteBase> splashRoutes = [
  GoRoute(
    path: ConstantRoutes.splash,
    builder: (context, state) => SplashScreen(),
  ),
];
