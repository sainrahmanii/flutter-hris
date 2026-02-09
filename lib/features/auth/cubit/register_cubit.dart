import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hris/core/constants/constant_routes.dart';
import 'package:hris/features/auth/presentation/pages/register_screen.dart';

mixin RegisterCubit on State<RegisterScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  void onRegisterPressed(BuildContext context) {
    context.go(ConstantRoutes.home);
  }

  void onLoginPressed(BuildContext context) {
    // context.go(ConstantRoutes.login);

    context.pop();
  }
}
