import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hris/core/constants/constant_routes.dart';
import 'package:hris/features/auth/presentation/pages/login_screen.dart';

mixin LoginCubit on State<LoginScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  void onLoginPressed(BuildContext context) {
    context.go(ConstantRoutes.home);
  }

  void onRegisterPressed(BuildContext context) {
    context.push(ConstantRoutes.register);
  }
}
