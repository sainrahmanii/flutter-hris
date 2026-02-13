import 'package:flutter/material.dart';
import 'package:hris/components/molecules/molecules_loading.dart';
import 'package:hris/components/organism/organism_app_bar.dart';
import 'package:hris/features/history/presentations/widgets/history_attendance.dart';
import 'package:hris/features/history/presentations/widgets/history_count_attendance.dart';
import 'package:hris/features/history/presentations/widgets/history_reset_filter.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kTextTabBarHeight),
        child: OrganismAppBar(text: 'Riwayat Absensi'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              spacing: 16,
              // crossAxisAlignment: .start,
              children: [
                HistoryResetFilter(),
                HistoryCountAttendance(),
                HistoryAttendance(),
                MoleculesLoading(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
