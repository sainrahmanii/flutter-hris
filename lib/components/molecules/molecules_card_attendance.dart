import 'package:flutter/material.dart';
import 'package:hris/components/atoms/atom_card.dart';
import 'package:hris/components/atoms/atom_text.dart';
import 'package:hris/core/themes/color_theme.dart';

class MoleculesCardAttendance extends StatelessWidget {
  final String label;
  final int count;
  final IconData icon;
  final Color color;
  const MoleculesCardAttendance({
    super.key,
    required this.label,
    required this.count,
    required this.icon,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return AtomCard(
      smallPadding: true,
      width: 115,
      child: Row(
        crossAxisAlignment: .start,
        mainAxisAlignment: .spaceBetween,
        children: [
          Column(
            crossAxisAlignment: .start,
            spacing: 6,
            children: [
              AtomText.bodySmall(label, TextAlign.left, ColorTheme().white),
              AtomText.bodySmallBold(
                count.toString(),
                TextAlign.left,
                ColorTheme().white,
              ),
            ],
          ),
          Icon(icon, color: color.withValues(alpha: 0.2)),
        ],
      ),
    );
  }
}
