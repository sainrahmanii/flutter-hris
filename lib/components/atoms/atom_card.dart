import 'package:flutter/material.dart';
import 'package:hris/core/constants/constant_sizes.dart';
import 'package:hris/core/themes/color_theme.dart';

class AtomCard extends StatelessWidget {
  final bool smallPadding;
  final Widget child;
  final double? width;
  const AtomCard({
    super.key,
    required this.smallPadding,
    required this.child,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(smallPadding ? 8 : 16),
      width: width,
      decoration: BoxDecoration(
        color: ColorTheme().darkGrey,
        borderRadius: BorderRadius.circular(ConstantSizes.defaultRadius),
        border: Border.all(width: 1, color: ColorTheme().borderGrey),
      ),
      child: child,
    );
  }
}
