import 'package:flutter/material.dart';
import 'package:hris/components/atoms/text_body_medium.dart';
import 'package:hris/core/constants/constant_sizes.dart';
import 'package:hris/core/themes/color_theme.dart';

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
        TextBodyMedium(
          textBodyMedium: label,
          color: ColorTheme().grey,
          variant: FontWeight.normal,
        ),
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
              color: ColorTheme().grey,
            ),
            suffixIcon: suffixIcon,
            filled: true,
            fillColor: ColorTheme().black,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(ConstantSizes.defaultRadius),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(ConstantSizes.defaultRadius),
            ),
            errorBorder: OutlineInputBorder(
              borderSide: BorderSide(color: ColorTheme().red, width: .5),
              borderRadius: BorderRadius.circular(ConstantSizes.defaultRadius),
            ),
          ),
        ),
      ],
    );
  }
}
