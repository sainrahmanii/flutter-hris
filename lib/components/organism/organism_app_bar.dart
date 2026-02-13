import 'package:flutter/material.dart';
import 'package:hris/components/atoms/atom_text.dart';
import 'package:hris/core/themes/color_theme.dart';

class OrganismAppBar extends StatelessWidget {
  final String text;
  const OrganismAppBar({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      backgroundColor: ColorTheme().black,
      surfaceTintColor: ColorTheme().black,
      title: AtomText.bodyLargeBold(text, TextAlign.center, ColorTheme().white),
    );
  }
}
