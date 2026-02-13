import 'package:flutter/material.dart';
import 'package:hris/components/atoms/atom_card.dart';
import 'package:hris/components/atoms/atom_horizontal_devider.dart';
import 'package:hris/components/atoms/atom_icon_badge.dart';
import 'package:hris/components/atoms/atom_text.dart';
import 'package:hris/components/atoms/atom_text_badge.dart';
import 'package:hris/core/themes/color_theme.dart';

class MoleculesCardHistory extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String shift;
  final String shiftTime;
  final String dateTime;
  final String labelStatusBadge;
  final String arrivalTime;
  final String leavingTime;
  final AtomBadgeVariant variant;
  const MoleculesCardHistory({
    super.key,
    required this.icon,
    required this.color,
    required this.shift,
    required this.dateTime,
    required this.labelStatusBadge,
    required this.arrivalTime,
    required this.leavingTime,
    required this.shiftTime,
    required this.variant,
  });

  @override
  Widget build(BuildContext context) {
    return AtomCard(
      smallPadding: true,
      child: Column(
        spacing: 12,
        children: [
          Row(
            crossAxisAlignment: .start,
            mainAxisAlignment: .center,
            spacing: 10,
            children: [
              AtomIconBadge(icon: icon, color: color),
              Expanded(
                child: Column(
                  crossAxisAlignment: .start,
                  children: [
                    AtomText.bodySmall(
                      dateTime,
                      TextAlign.start,
                      ColorTheme().white,
                    ),
                    AtomText.bodySmall(
                      "$shift   •   $shiftTime",
                      TextAlign.start,
                      ColorTheme().grey,
                    ),
                  ],
                ),
              ),
              AtomTextBadge(variant: variant, label: labelStatusBadge),
            ],
          ),
          Divider(color: ColorTheme().borderGrey, height: 0.5),
          Row(
            spacing: 4,
            mainAxisAlignment: .spaceBetween,
            children: [
              Column(
                spacing: 4,
                crossAxisAlignment: .start,
                children: [
                  AtomText.bodySmall(
                    'JAM MASUK',
                    TextAlign.start,
                    ColorTheme().grey,
                  ),
                  AtomText.bodySmallBold(
                    arrivalTime,
                    TextAlign.start,
                    ColorTheme().white,
                  ),
                ],
              ),
              AtomHorizontalDevider(height: 34),
              Column(
                spacing: 4,
                crossAxisAlignment: .end,
                children: [
                  AtomText.bodySmall(
                    'JAM PULANG',
                    TextAlign.start,
                    ColorTheme().grey,
                  ),
                  AtomText.bodySmallBold(
                    leavingTime,
                    TextAlign.start,
                    ColorTheme().white,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
