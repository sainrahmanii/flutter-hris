import 'package:go_router/go_router.dart';
import 'package:hris/core/constants/constant_routes.dart';
import 'package:hris/features/home/presentation/pages/home_screen.dart';
import 'package:hris/features/main/presentation/pages/main_screen.dart';

List<RouteBase> mainRoutes = [
  StatefulShellRoute.indexedStack(
    builder: (context, state, navigationShell) =>
        MainScreen(navigationShell: navigationShell),
    branches: [
      StatefulShellBranch(
        routes: [
          GoRoute(
            path: ConstantRoutes.home,
            builder: (context, state) => HomeScreen(),
          ),
        ],
      ),
      // StatefulShellBranch(
      //   routes: [
      //     GoRoute(
      //       path: ConstantRoutes.history,
      //       builder: (context, state) => HistoryScreen(),
      //     ),
      //   ],
      // ),
      // StatefulShellBranch(
      //   routes: [
      //     GoRoute(
      //       path: ConstantRoutes.profile,
      //       builder: (context, state) => ProfileScreen(),
      //     ),
      //   ],
      // ),
    ],
  ),
];
