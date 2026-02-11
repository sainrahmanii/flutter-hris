import 'package:flutter/material.dart';
import 'package:hris/components/atoms/text_body_medium.dart';
import 'package:hris/components/atoms/text_body_small.dart';
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
            TextBodySmall(
              textBodySmall: 'LIVE TIME',
              color: ColorTheme().primary,
              center: false,
            ),
          ],
        ),
        Text.rich(
          TextSpan(
            style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
            children: [
              TextSpan(text: '11:22'),
              TextSpan(
                text: ':23',
                style: TextStyle(color: ColorTheme().primary),
              ),
            ],
          ),
        ),
        TextBodyMedium(
          textBodyMedium: 'Rabu, 11 Februari 2026',
          variant: FontWeight.normal,
          color: ColorTheme().white,
        ),
      ],
    );
  }
}
