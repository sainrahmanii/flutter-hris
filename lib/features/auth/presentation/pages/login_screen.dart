import 'package:flutter/material.dart';
import 'package:hris/features/auth/cubit/login_cubit.dart';
import 'package:hris/features/auth/presentation/widgets/form_login.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> with LoginCubit {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: FormLogin(
            emailController: emailController,
            passwordController: passwordController,
            onLoginPressed: () => onLoginPressed(context),
            onRegisterPressed: () => onRegisterPressed(context),
          ),
        ),
      ),
    );
  }
}
