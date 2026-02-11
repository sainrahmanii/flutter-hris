import 'package:flutter/material.dart';
import 'package:hris/core/constants/constant_sizes.dart';
import 'package:hris/core/themes/color_theme.dart';

enum AppBadgeVariant { green, yellow, red }

class AppTextBadge extends StatelessWidget {
  final AppBadgeVariant variant;
  final String label;
  const AppTextBadge({super.key, required this.variant, required this.label});

  @override
  Widget build(BuildContext context) {
    if (variant == AppBadgeVariant.red) {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 8),
        decoration: BoxDecoration(
          color: ColorTheme().red.withValues(alpha: 0.20),
          borderRadius: BorderRadius.circular(99),
        ),
        child: Text(
          label,
          style: TextStyle(
            color: ColorTheme().red,
            fontSize: 12,
            fontWeight: FontWeight.w400,
          ),
        ),
      );
    }

    if (variant == AppBadgeVariant.yellow) {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 8),
        decoration: BoxDecoration(
          color: ColorTheme().primary.withValues(alpha: 0.20),
          borderRadius: BorderRadius.circular(ConstantSizes.defaultRadius),
        ),
        child: Text(
          label,
          style: TextStyle(
            color: ColorTheme().primary,
            fontSize: 12,
            fontWeight: FontWeight.w400,
          ),
        ),
      );
    }

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        color: ColorTheme().green.withValues(alpha: 0.20),
        borderRadius: BorderRadius.circular(99),
      ),
      child: Text(
        label,
        style: TextStyle(
          color: ColorTheme().green,
          fontSize: 12,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
