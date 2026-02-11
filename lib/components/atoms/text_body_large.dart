import 'package:flutter/material.dart';
import 'package:hris/core/themes/color_theme.dart';

class TextBodyLarge extends StatelessWidget {
  final String textBodyLarge;
  const TextBodyLarge({super.key, required this.textBodyLarge});

  @override
  Widget build(BuildContext context) {
    return Text(
      textBodyLarge,
      style: TextStyle(
        fontWeight: FontWeight.normal,
        fontSize: 16,
        color: ColorTheme().grey,
      ),
    );
  }
}
