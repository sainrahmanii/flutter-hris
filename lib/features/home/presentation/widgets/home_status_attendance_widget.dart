import 'package:flutter/material.dart';
import 'package:hris/components/atoms/custom_button.dart';
import 'package:hris/components/atoms/custom_card.dart';
import 'package:hris/components/atoms/text_body_medium.dart';
import 'package:hris/components/atoms/text_body_small.dart';
import 'package:hris/components/atoms/text_heading_2.dart';
import 'package:hris/components/molecules/app_icon_text.dart';
import 'package:hris/components/molecules/app_text_badge.dart';
import 'package:hris/core/themes/color_theme.dart';

class HomeStatusAttendanceWidget extends StatelessWidget {
  const HomeStatusAttendanceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      smallPadding: false,
      child: Column(
        spacing: 16,
        children: [
          Row(
            mainAxisAlignment: .spaceBetween,
            children: [
              TextBodyMedium(
                textBodyMedium: 'Status Absensi',
                color: ColorTheme().white,
                variant: FontWeight.bold,
              ),
              AppTextBadge(
                variant: AppBadgeVariant.yellow,
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
                  AppIconText(icon: Icons.login_rounded, label: 'JAM MASUK'),
                  TextHeading2(textHeading2: '08:00'),
                  TextBodySmall(
                    textBodySmall: 'Tepat Waktu',
                    color: ColorTheme().grey,
                    center: false,
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: .end,
                spacing: 8,
                children: [
                  AppIconText(icon: Icons.login_rounded, label: 'JAM PULANG'),
                  TextHeading2(textHeading2: '--:--'),
                  TextBodySmall(
                    textBodySmall: 'Belum Absen',
                    color: ColorTheme().grey,
                    center: false,
                  ),
                ],
              ),
            ],
          ),
          CustomButton(
            label: 'Check Out Sekarang',
            variant: CustomButtonVariant.elevated,
            onPressed: () {},
          ),
          TextBodySmall(
            textBodySmall:
                'Pastikan Anda berada di area kantor sebelum melakukan absensi',
            color: ColorTheme().white,
            center: true,
          ),
        ],
      ),
    );
  }
}
