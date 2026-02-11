import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hris/components/atoms/custom_card.dart';
import 'package:hris/components/atoms/text_body_small.dart';
import 'package:hris/components/molecules/app_icon_badge.dart';
import 'package:hris/core/themes/color_theme.dart';

class HomeCardLocationWidget extends StatelessWidget {
  const HomeCardLocationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      smallPadding: false,
      child: Row(
        children: [
          AppIconBadge(
            icon: CupertinoIcons.paperplane_fill,
            color: ColorTheme().primary,
          ),
          SizedBox(width: 16),
          Column(
            crossAxisAlignment: .start,
            children: [
              TextBodySmall(
                textBodySmall: 'LOKASI SAAT INI',
                color: ColorTheme().grey,
                center: false,
              ),
              TextBodySmall(
                textBodySmall: 'Sentul, Kab. Bogor',
                color: ColorTheme().white,
                center: false,
              ),
            ],
          ),
          Spacer(),
          IconButton(
            icon: Icon(Icons.refresh_rounded),
            color: ColorTheme().white,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
