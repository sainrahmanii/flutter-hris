import 'package:flutter/material.dart';
import 'package:hris/components/atoms/text_body_medium.dart';
import 'package:hris/core/constants/constant_sizes.dart';

class AppTextField extends StatelessWidget {
  final String label;
  final String hint;
  final bool obsecuretext;
  final TextEditingController textEditingController;
  final TextInputType textInputType;
  final Widget? suffixIcon;
  final bool isReadOnly;
  final TextInputAction textInputAction;
  const AppTextField({
    super.key,
    required this.label,
    required this.hint,
    required this.obsecuretext,
    required this.textEditingController,
    required this.textInputType,
    this.suffixIcon,
    required this.isReadOnly,
    required this.textInputAction,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: .start,
      spacing: 8,
      children: [
        TextBodyMedium(textBodyMedium: label),
        TextFormField(
          obscureText: obsecuretext,
          readOnly: isReadOnly,
          controller: textEditingController,
          textInputAction: textInputAction,
          keyboardType: textInputType,
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.normal,
              color: Color(0xFFB9B9B9),
            ),
            suffixIcon: suffixIcon,
            filled: true,
            fillColor: Color(0xFF161618),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(ConstantSizes.defaultRadius),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(ConstantSizes.defaultRadius),
            ),
            errorBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.red, width: .5),
              borderRadius: BorderRadius.circular(ConstantSizes.defaultRadius),
            ),
          ),
        ),
      ],
    );
  }
}
