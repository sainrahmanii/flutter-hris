import 'package:flutter/material.dart';
import 'package:hris/components/atoms/custom_button.dart';
import 'package:hris/components/atoms/text_body_large.dart';
import 'package:hris/components/atoms/text_heading_1.dart';
import 'package:hris/components/molecules/app_text_field.dart';

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
        TextHeading1(textHeading1: 'Welcome Back'),
        const SizedBox(height: 16),
        TextBodyLarge(
          textBodyLarge:
              'Sign in to access your dashboard and \ncontinue tracking your attendance efficiently',
        ),
        const SizedBox(height: 40),
        AppTextField(
          label: 'Email Address',
          hint: 'Enter Your Email Address',
          obsecuretext: false,
          textEditingController: widget.emailController,
          textInputType: TextInputType.emailAddress,
          isReadOnly: false,
          textInputAction: TextInputAction.next,
        ),
        const SizedBox(height: 16),
        AppTextField(
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
        CustomButton(
          label: 'Login',
          variant: CustomButtonVariant.elevated,
          onPressed: widget.onLoginPressed,
        ),
        const SizedBox(height: 16),
        Row(
          mainAxisAlignment: .center,
          children: [
            Text("Don't have an account?"),
            CustomButton(
              label: 'Register',
              variant: CustomButtonVariant.text,
              onPressed: widget.onRegisterPressed,
            ),
          ],
        ),
      ],
    );
  }
}
