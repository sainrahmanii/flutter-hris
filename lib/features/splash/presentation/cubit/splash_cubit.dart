import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hris/core/constants/constant_routes.dart';
import 'package:hris/features/splash/presentation/pages/splash_screen.dart';

mixin SplashCubit on State<SplashScreen> {
  @override
  void initState() {
    WidgetsBinding.instance.endOfFrame.then((value) async {
      await Future.delayed(const Duration(seconds: 3));

      if (mounted) context.go(ConstantRoutes.login);
    });
    super.initState();
  }
}
