import 'package:flutter/material.dart';
import 'package:hris/components/atoms/atom_text.dart';
import 'package:hris/core/themes/color_theme.dart';

class MoleculesDropdownField extends StatelessWidget {
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final String text;
  const MoleculesDropdownField({
    super.key,
    this.prefixIcon,
    this.suffixIcon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      decoration: BoxDecoration(
        color: ColorTheme().black,
        border: Border.all(color: ColorTheme().primary, width: 1),
        borderRadius: BorderRadius.circular(40),
      ),
      child: Row(
        mainAxisAlignment: .spaceBetween,
        spacing: 10,
        children: [
          if (prefixIcon != null)
            Icon(prefixIcon, color: ColorTheme().primary, size: 24),
          AtomText.bodySmall(text, TextAlign.center, ColorTheme().white),
          Icon(suffixIcon, color: ColorTheme().grey, size: 24),
        ],
      ),
    );
  }
}
