import 'package:flutter/material.dart';
import 'package:hris/components/atoms/atom_text.dart';
import 'package:hris/core/constants/constant_sizes.dart';
import 'package:hris/core/themes/color_theme.dart';

enum MoleculesBadgeVariant { green, yellow, red }

class MoleculesTextBadge extends StatelessWidget {
  final MoleculesBadgeVariant variant;
  final String label;
  const MoleculesTextBadge({
    super.key,
    required this.variant,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    if (variant == MoleculesBadgeVariant.red) {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 8),
        decoration: BoxDecoration(
          color: ColorTheme().red.withValues(alpha: 0.20),
          borderRadius: BorderRadius.circular(99),
        ),
        child: AtomText.bodySmall(label, TextAlign.center, ColorTheme().red),
      );
    }

    if (variant == MoleculesBadgeVariant.yellow) {
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
