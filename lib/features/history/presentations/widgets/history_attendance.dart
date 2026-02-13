import 'package:flutter/material.dart';
import 'package:hris/components/atoms/atom_text_badge.dart';
import 'package:hris/components/molecules/molecules_card_history.dart';
import 'package:hris/core/themes/color_theme.dart';

class HistoryAttendance extends StatelessWidget {
  const HistoryAttendance({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 16,
      children: [
        MoleculesCardHistory(
          icon: Icons.hourglass_top_rounded,
          color: ColorTheme().primary,
          dateTime: 'Hari Ini',
          shift: 'Shift Pagi',
          shiftTime: '08:00 - 17:00',
          labelStatusBadge: 'Belum Check-in',
          arrivalTime: '--:--',
          leavingTime: '--:--',
          variant: AtomBadgeVariant.yellow,
        ),
        MoleculesCardHistory(
          icon: Icons.check_circle_rounded,
          color: ColorTheme().green,
          dateTime: 'Minggu, 4 Januari',
          shift: 'Shift Pagi',
          shiftTime: '08:00 - 17:00',
          labelStatusBadge: 'Tepat Waktu',
          arrivalTime: '07:45',
          leavingTime: '17:15',
          variant: AtomBadgeVariant.green,
        ),
        MoleculesCardHistory(
          icon: Icons.av_timer_rounded,
          color: ColorTheme().red,
          dateTime: 'Sabtu, 3 Januari',
          shift: 'Shift Pagi',
          shiftTime: '08:00 - 17:00',
          labelStatusBadge: 'Terlambat',
          arrivalTime: '09:15',
          leavingTime: '17:10',
          variant: AtomBadgeVariant.red,
        ),
        MoleculesCardHistory(
          icon: Icons.hourglass_top_rounded,
          color: ColorTheme().primary,
          dateTime: 'Hari Ini',
          shift: 'Shift Pagi',
          shiftTime: '08:00 - 17:00',
          labelStatusBadge: 'Belum Check-in',
          arrivalTime: '--:--',
          leavingTime: '--:--',
          variant: AtomBadgeVariant.yellow,
        ),
        MoleculesCardHistory(
          icon: Icons.check_circle_rounded,
          color: ColorTheme().green,
          dateTime: 'Minggu, 4 Januari',
          shift: 'Shift Pagi',
          shiftTime: '08:00 - 17:00',
          labelStatusBadge: 'Tepat Waktu',
          arrivalTime: '07:45',
          leavingTime: '17:15',
          variant: AtomBadgeVariant.green,
        ),
        MoleculesCardHistory(
          icon: Icons.av_timer_rounded,
          color: ColorTheme().red,
          dateTime: 'Sabtu, 3 Januari',
          shift: 'Shift Pagi',
          shiftTime: '08:00 - 17:00',
          labelStatusBadge: 'Terlambat',
          arrivalTime: '09:15',
          leavingTime: '17:10',
          variant: AtomBadgeVariant.red,
        ),
      ],
    );
  }
}
