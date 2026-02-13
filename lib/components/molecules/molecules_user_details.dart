import 'package:flutter/material.dart';
import 'package:hris/components/atoms/atom_icon_badge.dart';
import 'package:hris/components/atoms/atom_text.dart';
import 'package:hris/core/themes/color_theme.dart';

class MoleculesUserDetails extends StatelessWidget {
  final String label;
  final String value;
  final IconData icon;
  const MoleculesUserDetails({
    super.key,
    required this.label,
    required this.value,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        AtomIconBadge(
          icon: icon,
          color: ColorTheme().primary,
          boxShape: BoxShape.circle,
        ),
        SizedBox(width: 16),
        AtomText.bodyMedium(label, TextAlign.start, ColorTheme().white),
        Spacer(),
        AtomText.bodyMediumBold(value, TextAlign.end, ColorTheme().white),
      ],
    );
  }
}
