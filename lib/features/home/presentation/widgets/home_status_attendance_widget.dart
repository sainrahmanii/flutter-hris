import 'package:flutter/material.dart';
import 'package:hris/components/atoms/atom_horizontal_devider.dart';
import 'package:hris/components/atoms/atom_text.dart';
import 'package:hris/components/atoms/atom_button.dart';
import 'package:hris/components/atoms/atom_card.dart';
import 'package:hris/components/molecules/molecules_icon_text.dart';
import 'package:hris/components/atoms/atom_text_badge.dart';
import 'package:hris/core/themes/color_theme.dart';

class HomeStatusAttendanceWidget extends StatelessWidget {
  const HomeStatusAttendanceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AtomCard(
      smallPadding: false,
      child: Column(
        spacing: 16,
        children: [
          Row(
            mainAxisAlignment: .spaceBetween,
            children: [
              AtomText.bodyLargeBold(
                'Status Absensi',
                TextAlign.left,
                ColorTheme().white,
              ),
              AtomTextBadge(
                variant: AtomBadgeVariant.yellow,
                label: 'SUDAH CHECK-IN',
              ),
            ],
          ),
          Divider(color: ColorTheme().borderGrey, height: 1),
          Row(
            mainAxisAlignment: .spaceBetween,
            children: [
              Column(
                crossAxisAlignment: .start,
                spacing: 8,
                children: [
                  MoleculesIconText(
                    icon: Icons.login_rounded,
                    label: 'JAM MASUK',
                  ),
                  AtomText.h2('08:00', TextAlign.left),
                  AtomText.bodySmall(
                    'Tepat Waktu',
                    TextAlign.left,
                    ColorTheme().grey,
                  ),
                ],
              ),
              AtomHorizontalDevider(height: 84),
              Column(
                crossAxisAlignment: .end,
                spacing: 8,
                children: [
                  MoleculesIconText(
                    icon: Icons.login_rounded,
                    label: 'JAM PULANG',
                  ),
                  AtomText.h2('--:--', TextAlign.left),
                  AtomText.bodySmall(
                    'Belum Absen',
                    TextAlign.left,
                    ColorTheme().grey,
                  ),
                ],
              ),
            ],
          ),
          AtomButton(
            label: 'Check Out Sekarang',
            variant: AtomButtonVariant.elevated,
            foregroundColor: ColorTheme().black,
            backgroundColor: ColorTheme().primary,
            onPressed: () {},
          ),
          AtomText.bodySmall(
            'Pastikan Anda berada di area kantor sebelum melakukan absensi',
            TextAlign.center,
            ColorTheme().white,
          ),
        ],
      ),
    );
  }
}
