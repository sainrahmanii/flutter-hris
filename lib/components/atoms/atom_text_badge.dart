import 'package:flutter/material.dart';
import 'package:hris/components/atoms/atom_text.dart';
import 'package:hris/core/constants/constant_sizes.dart';
import 'package:hris/core/themes/color_theme.dart';

enum AtomBadgeVariant { green, yellow, red }

class AtomTextBadge extends StatelessWidget {
  final AtomBadgeVariant variant;
  final String label;
  const AtomTextBadge({super.key, required this.variant, required this.label});

  @override
  Widget build(BuildContext context) {
    if (variant == AtomBadgeVariant.red) {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 8),
        decoration: BoxDecoration(
          color: ColorTheme().red.withValues(alpha: 0.20),
          borderRadius: BorderRadius.circular(99),
        ),
        child: AtomText.bodySmall(label, TextAlign.center, ColorTheme().red),
      );
    }

    if (variant == AtomBadgeVariant.yellow) {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 8),
        decoration: BoxDecoration(
          color: ColorTheme().primary.withValues(alpha: 0.20),
          borderRadius: BorderRadius.circular(ConstantSizes.defaultRadius),
        ),
        child: AtomText.bodySmall(
          label,
          TextAlign.center,
          ColorTheme().primary,
        ),
      );
    }

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        color: ColorTheme().green.withValues(alpha: 0.20),
        borderRadius: BorderRadius.circular(99),
      ),
      child: AtomText.bodySmall(label, TextAlign.center, ColorTheme().green),
    );
  }
}
