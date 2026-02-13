import 'package:flutter/material.dart';
import 'package:hris/components/molecules/molecules_card_attendance.dart';
import 'package:hris/core/themes/color_theme.dart';

class HistoryCountAttendance extends StatelessWidget {
  const HistoryCountAttendance({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: .spaceBetween,
      children: [
        MoleculesCardAttendance(
          label: 'HADIR',
          count: 22,
          icon: Icons.check_circle_rounded,
          color: ColorTheme().green,
        ),
        MoleculesCardAttendance(
          label: 'TERLAMBAT',
          count: 4,
          icon: Icons.warning_rounded,
          color: ColorTheme().red,
        ),
        MoleculesCardAttendance(
          label: 'ALPHA',
          count: 0,
          icon: Icons.cancel_rounded,
          color: ColorTheme().grey,
        ),
      ],
    );
  }
}
