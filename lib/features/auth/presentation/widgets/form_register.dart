import 'package:flutter/material.dart';
import 'package:hris/components/atoms/custom_button.dart';
import 'package:hris/components/atoms/text_body_large.dart';
import 'package:hris/components/atoms/text_heading_1.dart';
import 'package:hris/components/molecules/app_text_field.dart';

class FormRegister extends StatefulWidget {
  final TextEditingController fullNameController;
  final TextEditingController companyController;
  final TextEditingController nipController;
  final TextEditingController divisionController;
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final VoidCallback onLoginPressed;
  final VoidCallback onRegisterPressed;
  const FormRegister({
    super.key,
    required this.emailController,
    required this.passwordController,
    required this.onLoginPressed,
    required this.onRegisterPressed,
    required this.fullNameController,
    required this.companyController,
    required this.nipController,
    required this.divisionController,
  });

  @override
  State<FormRegister> createState() => _FormRegisterState();
}

class _FormRegisterState extends State<FormRegister> {
  bool _isObsecureText = true;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        mainAxisAlignment: .center,
        crossAxisAlignment: .start,
        children: [
          TextHeading1(textHeading1: 'Create Account'),
          const SizedBox(height: 16),
          TextBodyLarge(
            textBodyLarge: 'Please fill in the details below to register',
          ),
          const SizedBox(height: 22),
          AppTextField(
            label: 'Full Name',
            hint: 'Enter your full name',
            obsecuretext: false,
            textEditingController: widget.emailController,
            textInputType: TextInputType.emailAddress,
            isReadOnly: false,
            textInputAction: TextInputAction.next,
          ),
          const SizedBox(height: 16),
          AppTextField(
            label: 'Email Address',
            hint: 'Enter your email address',
            obsecuretext: false,
            textEditingController: widget.emailController,
            textInputType: TextInputType.emailAddress,
            isReadOnly: false,
            textInputAction: TextInputAction.next,
          ),
          const SizedBox(height: 16),
          AppTextField(
            label: 'Company',
            hint: 'Select your company',
            obsecuretext: false,
            textEditingController: widget.emailController,
            textInputType: TextInputType.emailAddress,
            isReadOnly: true,
            suffixIcon: Icon(Icons.keyboard_arrow_down_rounded),
            textInputAction: TextInputAction.next,
          ),
          const SizedBox(height: 16),
          AppTextField(
            label: 'NIP',
            hint: 'Enter your NIP',
            obsecuretext: false,
            textEditingController: widget.emailController,
            textInputType: TextInputType.emailAddress,
            isReadOnly: false,
            textInputAction: TextInputAction.next,
          ),
          const SizedBox(height: 16),
          AppTextField(
            label: 'Division',
            hint: 'Enter your division',
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
            label: 'Register',
            variant: CustomButtonVariant.elevated,
            onPressed: widget.onRegisterPressed,
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: .center,
            children: [
              Text("Already have account?"),
              CustomButton(
                label: 'Login',
                variant: CustomButtonVariant.text,
                onPressed: widget.onLoginPressed,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
