import 'package:flutter/material.dart';
import 'package:hris/components/atoms/atom_text.dart';
import 'package:hris/core/themes/color_theme.dart';

class ProfileVersion extends StatelessWidget {
  const ProfileVersion({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AtomText.bodyLargeBold(
          'Nafanesia Work',
          TextAlign.center,
          ColorTheme().white,
        ),
        AtomText.bodySmall(
          'v1.0.0 (Build 2026.02.01)',
          TextAlign.center,
          ColorTheme().grey,
        ),
      ],
    );
  }
}
