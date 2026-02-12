import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hris/components/atoms/atom_text.dart';
import 'package:hris/core/themes/color_theme.dart';

class HomeLiveTimeWidget extends StatelessWidget {
  const HomeLiveTimeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: .center,
          spacing: 6,
          children: [
            Container(
              width: 8,
              height: 8,
              decoration: BoxDecoration(
                color: ColorTheme().primary,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            AtomText.bodySmall(
              'LIVE TIME',
              TextAlign.center,
              ColorTheme().primary,
            ),
          ],
        ),
        Text.rich(
          TextSpan(
            style: GoogleFonts.plusJakartaSans(
              fontSize: 48,
              fontWeight: FontWeight.bold,
            ),
            children: [
              TextSpan(text: '11:22'),
              TextSpan(
                text: ':23',
                style: GoogleFonts.plusJakartaSans(color: ColorTheme().primary),
              ),
            ],
          ),
        ),
        AtomText.bodyMedium(
          'Rabu, 11 Februari 2026',
          TextAlign.center,
          ColorTheme().white,
        ),
      ],
    );
  }
}
