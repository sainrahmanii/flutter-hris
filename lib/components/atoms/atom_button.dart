import 'package:flutter/material.dart';
import 'package:hris/components/atoms/atom_text.dart';
import 'package:hris/core/constants/constant_sizes.dart';
import 'package:hris/core/themes/color_theme.dart';

enum AtomButtonVariant { elevated, outlined, text }

class AtomButton extends StatelessWidget {
  final String label;
  final AtomButtonVariant variant;
  final VoidCallback onPressed;
  const AtomButton({
    super.key,
    required this.label,
    required this.variant,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    if (variant == AtomButtonVariant.elevated) {
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
          foregroundColor: ColorTheme().primary,
          minimumSize: Size(double.infinity, 56),
          shape: RoundedRectangleBorder(
            side: BorderSide(width: 0.5, color: ColorTheme().grey),
            borderRadius: BorderRadius.circular(ConstantSizes.defaultRadius),
          ),
        ),
        child: AtomText.bodyLargeBold(
          label,
          TextAlign.center,
          ColorTheme().primary,
        ),
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
