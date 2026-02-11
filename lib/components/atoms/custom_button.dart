import 'package:flutter/material.dart';
import 'package:hris/core/constants/constant_sizes.dart';
import 'package:hris/core/themes/color_theme.dart';

enum CustomButtonVariant { elevated, outlined, text }

class CustomButton extends StatelessWidget {
  final String label;
  final CustomButtonVariant variant;
  final VoidCallback onPressed;
  const CustomButton({
    super.key,
    required this.label,
    required this.variant,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    if (variant == CustomButtonVariant.elevated) {
      return ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          foregroundColor: ColorTheme().black,
          backgroundColor: ColorTheme().primary,
          minimumSize: Size(double.infinity, 56),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(ConstantSizes.defaultRadius),
          ),
        ),
        child: Text(
          label,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
      );
    }

    if (variant == CustomButtonVariant.outlined) {
      return OutlinedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          foregroundColor: ColorTheme().primary,
          minimumSize: Size(double.infinity, 56),
          shape: RoundedRectangleBorder(
            side: BorderSide(width: 0.5, color: ColorTheme().grey),
            borderRadius: BorderRadius.circular(ConstantSizes.defaultRadius),
          ),
        ),
        child: Text(
          label,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
      );
    }

    return TextButton(
      onPressed: onPressed,
      child: Text(label, style: TextStyle(color: ColorTheme().primary)),
    );
  }
}
