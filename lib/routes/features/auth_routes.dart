import 'package:go_router/go_router.dart';
import 'package:hris/core/constants/constant_routes.dart';
import 'package:hris/features/auth/presentation/pages/login_screen.dart';
import 'package:hris/features/auth/presentation/pages/register_screen.dart';

List<RouteBase> authRoutes = [
  GoRoute(
    path: ConstantRoutes.login,
    builder: (context, state) => LoginScreen(),
  ),
  GoRoute(
    path: ConstantRoutes.register,
    builder: (context, state) => RegisterScreen(),
  ),
];
