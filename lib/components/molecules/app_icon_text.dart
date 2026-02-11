import 'package:flutter/material.dart';
import 'package:hris/components/atoms/text_body_small.dart';
import 'package:hris/core/themes/color_theme.dart';

class AppIconText extends StatelessWidget {
  final IconData icon;
  final String label;
  const AppIconText({super.key, required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 8,
      children: [
        Icon(icon, color: ColorTheme().grey, size: 20),
        TextBodySmall(
          textBodySmall: label,
          color: ColorTheme().grey,
          center: false,
        ),
      ],
    );
  }
}
