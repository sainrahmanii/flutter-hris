import 'package:flutter/material.dart';
import 'package:hris/components/atoms/atom_text.dart';
import 'package:hris/components/atoms/atom_button.dart';
import 'package:hris/components/molecules/molecules_text_field.dart';
import 'package:hris/core/themes/color_theme.dart';

class FormLogin extends StatefulWidget {
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final VoidCallback onLoginPressed;
  final VoidCallback onRegisterPressed;
  const FormLogin({
    super.key,
    required this.emailController,
    required this.passwordController,
    required this.onLoginPressed,
    required this.onRegisterPressed,
  });

  @override
  State<FormLogin> createState() => _FormLoginState();
}

class _FormLoginState extends State<FormLogin> {
  bool _isObsecureText = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: .center,
      crossAxisAlignment: .start,
      children: [
        AtomText.h1('Welcome Back', TextAlign.left),
        const SizedBox(height: 16),
        AtomText.bodyLarge(
          'Sign in to access your dashboard and \ncontinue tracking your attendance efficiently',
          TextAlign.left,
        ),
        const SizedBox(height: 40),
        MoleculesTextField(
          label: 'Email Address',
          hint: 'Enter Your Email Address',
          obsecuretext: false,
          textEditingController: widget.emailController,
          textInputType: TextInputType.emailAddress,
          isReadOnly: false,
          textInputAction: TextInputAction.next,
        ),
        const SizedBox(height: 16),
        MoleculesTextField(
          label: 'Password',
          hint: 'Enter Your Password',
          obsecuretext: _isObsecureText,
          textEditingController: widget.passwordController,
          textInputType: TextInputType.visiblePassword,
          isReadOnly: false,
          textInputAction: TextInputAction.done,
          suffixIcon: IconButton(
            onPressed: () {
              setState(() {
                _isObsecureText = !_isObsecureText;
              });
            },
            icon: Icon(
              _isObsecureText
                  ? Icons.visibility_off_rounded
                  : Icons.visibility_rounded,
            ),
          ),
        ),
        const SizedBox(height: 16),
        AtomButton(
          label: 'Login',
          variant: AtomButtonVariant.elevated,
          foregroundColor: ColorTheme().black,
          backgroundColor: ColorTheme().primary,
          onPressed: widget.onLoginPressed,
        ),
        const SizedBox(height: 16),
        Row(
          mainAxisAlignment: .center,
          children: [
            AtomText.bodyLargeBold(
              "Don't have an account?",
              TextAlign.center,
              ColorTheme().white,
            ),
            AtomButton(
              label: 'Register',
              variant: AtomButtonVariant.text,
              onPressed: widget.onRegisterPressed,
            ),
          ],
        ),
      ],
    );
  }
}
