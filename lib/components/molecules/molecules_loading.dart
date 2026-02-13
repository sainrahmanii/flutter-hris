import 'package:flutter/material.dart';
import 'package:hris/components/atoms/atom_text.dart';
import 'package:hris/core/themes/color_theme.dart';

class MoleculesLoading extends StatelessWidget {
  const MoleculesLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 165,
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      decoration: BoxDecoration(
        color: ColorTheme().darkGrey,
        borderRadius: BorderRadius.circular(40),
      ),
      child: Row(
        mainAxisAlignment: .center,
        spacing: 8,
        children: [
          SizedBox(
            height: 20,
            width: 20,
            child: CircularProgressIndicator(
              strokeWidth: 3,
              backgroundColor: ColorTheme().primary.withValues(alpha: 0.2),
            ),
          ),
          AtomText.bodySmall(
            'Memuat data lama...',
            TextAlign.center,
            ColorTheme().white,
          ),
        ],
      ),
    );
  }
}
