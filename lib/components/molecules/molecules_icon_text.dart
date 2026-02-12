import 'package:flutter/material.dart';
import 'package:hris/components/atoms/atom_text.dart';
import 'package:hris/core/themes/color_theme.dart';

class MoleculesIconText extends StatelessWidget {
  final IconData icon;
  final String label;
  const MoleculesIconText({super.key, required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 8,
      children: [
        Icon(icon, color: ColorTheme().grey, size: 20),
        AtomText.bodySmall(label, TextAlign.center, ColorTheme().grey),
      ],
    );
  }
}
