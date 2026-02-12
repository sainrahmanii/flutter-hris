import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hris/components/atoms/atom_text.dart';
import 'package:hris/components/atoms/atom_card.dart';
import 'package:hris/components/atoms/atom_icon_badge.dart';
import 'package:hris/core/themes/color_theme.dart';

class HomeCardLocationWidget extends StatelessWidget {
  const HomeCardLocationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AtomCard(
      smallPadding: false,
      child: Row(
        children: [
          AtomIconBadge(
            icon: CupertinoIcons.paperplane_fill,
            color: ColorTheme().primary,
          ),
          SizedBox(width: 16),
          Column(
            crossAxisAlignment: .start,
            children: [
              AtomText.bodySmall(
                'LOKASI SAAT INI',
                TextAlign.left,
                ColorTheme().grey,
              ),
              AtomText.bodySmall(
                'Sentul, Kab. Bogor',
                TextAlign.left,
                ColorTheme().white,
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
