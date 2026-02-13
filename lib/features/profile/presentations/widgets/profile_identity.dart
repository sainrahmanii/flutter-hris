import 'package:flutter/material.dart';
import 'package:hris/components/atoms/atom_text.dart';
import 'package:hris/core/themes/color_theme.dart';

class ProfileIdentity extends StatelessWidget {
  const ProfileIdentity({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(100),
          child: Image.network(
            'https://avatars.githubusercontent.com/u/90170176?v=4',
            width: 128,
            height: 128,
          ),
        ),
        const SizedBox(height: 16),
        AtomText.h2('Husain Rahmani', TextAlign.center),
        const SizedBox(height: 4),
        AtomText.bodyMedium(
          'Mobile Developer',
          TextAlign.center,
          ColorTheme().white,
        ),
      ],
    );
  }
}
