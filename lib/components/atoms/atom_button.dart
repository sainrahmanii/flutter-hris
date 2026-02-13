import 'package:flutter/material.dart';
import 'package:hris/components/atoms/atom_text.dart';
import 'package:hris/core/constants/constant_sizes.dart';
import 'package:hris/core/themes/color_theme.dart';

enum AtomButtonVariant { elevated, outlined, text }

class AtomButton extends StatelessWidget {
  final String label;
  final AtomButtonVariant variant;
  final Color? foregroundColor;
  final Color? backgroundColor;
  final VoidCallback onPressed;
  final Color? borderColor;
  const AtomButton({
    super.key,
    required this.label,
    required this.variant,
    required this.onPressed,
    this.foregroundColor,
    this.backgroundColor,
    this.borderColor,
  });

  @override
  Widget build(BuildContext context) {
    if (variant == AtomButtonVariant.elevated) {
      return ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          foregroundColor: foregroundColor,
          backgroundColor: backgroundColor,
          minimumSize: Size(double.infinity, 56),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(ConstantSizes.defaultRadius),
          ),
        ),
        child: AtomText.bodyLargeBold(
          label,
          TextAlign.center,
          ColorTheme().black,
        ),
      );
    }

    if (variant == AtomButtonVariant.outlined) {
      return OutlinedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          foregroundColor: foregroundColor,
          backgroundColor: backgroundColor,
          minimumSize: Size(double.infinity, 56),
          side: BorderSide(
            width: 0.5,
            color: borderColor ?? ColorTheme().primary,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(ConstantSizes.defaultRadius),
          ),
        ),
        child: AtomText.bodyLargeBold(label, TextAlign.center, foregroundColor),
      );
    }

    return TextButton(
      onPressed: onPressed,
      child: AtomText.bodyLargeBold(
        label,
        TextAlign.center,
        ColorTheme().primary,
      ),
    );
  }
}
