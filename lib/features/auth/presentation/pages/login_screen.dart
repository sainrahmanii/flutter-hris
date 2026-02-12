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
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              constraints: BoxConstraints(minHeight: constraints.maxHeight),
              child: FormLogin(
                emailController: emailController,
                passwordController: passwordController,
                onLoginPressed: () => onLoginPressed(context),
                onRegisterPressed: () => onRegisterPressed(context),
              ),
            ),
          );
        },
      ),
    );
  }
}
