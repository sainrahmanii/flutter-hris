import 'package:flutter/material.dart';
import 'package:hris/components/atoms/atom_text.dart';
import 'package:hris/components/atoms/atom_text_badge.dart';
import 'package:hris/core/themes/color_theme.dart';

class HomeHeaderWidget extends StatelessWidget {
  const HomeHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: .spaceBetween,
      crossAxisAlignment: .center,
      children: [
        Column(
          crossAxisAlignment: .start,
          spacing: 2,
          children: [
            AtomText.bodyMedium(
              'Selamat Pagi,',
              TextAlign.left,
              ColorTheme().grey,
            ),
            AtomText.h2('Husain Rahmani', TextAlign.left),
            AtomTextBadge(
              variant: AtomBadgeVariant.yellow,
              label: 'Mobile Developer',
            ),
          ],
        ),
        Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.network(
                'https://avatars.githubusercontent.com/u/90170176?v=4',
                width: 48,
              ),
            ),
            Positioned(
              bottom: 2,
              right: 2,
              child: Container(
                width: 10,
                height: 10,
                decoration: BoxDecoration(
                  color: ColorTheme().primary,
                  shape: BoxShape.circle,
                  border: Border.all(width: 1, color: ColorTheme().black),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
