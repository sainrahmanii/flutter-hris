import 'package:flutter/material.dart';
import 'package:hris/core/themes/color_theme.dart';

class AtomHorizontalDevider extends StatelessWidget {
  final double height;
  const AtomHorizontalDevider({super.key, required this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1,
      height: height,
      decoration: BoxDecoration(color: ColorTheme().borderGrey),
    );
  }
}
