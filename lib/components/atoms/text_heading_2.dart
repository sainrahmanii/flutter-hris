import 'package:flutter/material.dart';
import 'package:hris/core/themes/color_theme.dart';

class TextHeading2 extends StatelessWidget {
  final String textHeading2;
  const TextHeading2({super.key, required this.textHeading2});

  @override
  Widget build(BuildContext context) {
    return Text(
      textHeading2,
      style: TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: 24,
        color: ColorTheme().white,
      ),
    );
  }
}
