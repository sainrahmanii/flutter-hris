import 'package:flutter/material.dart';
import 'package:hris/core/constants/constant_sizes.dart';
import 'package:hris/features/auth/cubit/register_cubit.dart';
import 'package:hris/features/auth/presentation/widgets/form_register.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> with RegisterCubit {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController fullNameController = TextEditingController();
  final TextEditingController nipController = TextEditingController();
  final TextEditingController companyController = TextEditingController();
  final TextEditingController divisionController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Register"), backgroundColor: Colors.black),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: ConstantSizes.defaultPadding,
          ),
          child: FormRegister(
            emailController: emailController,
            passwordController: passwordController,
            onLoginPressed: () => onLoginPressed(context),
            onRegisterPressed: () => onRegisterPressed(context),
            fullNameController: fullNameController,
            companyController: companyController,
            nipController: nipController,
            divisionController: divisionController,
          ),
        ),
      ),
    );
  }
}
