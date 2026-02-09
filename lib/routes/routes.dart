import 'package:go_router/go_router.dart';
import 'package:hris/core/constants/constant_routes.dart';
import 'package:hris/routes/features/auth_routes.dart';
import 'package:hris/routes/features/main_routes.dart';
import 'package:hris/routes/features/splash_routes.dart';

abstract class Routes {
  static final routerConfig = GoRouter(
    initialLocation: ConstantRoutes.splash,
    routes: [...splashRoutes, ...authRoutes, ...mainRoutes],
  );
}
