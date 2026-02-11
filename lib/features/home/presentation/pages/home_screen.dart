import 'package:flutter/material.dart';
import 'package:hris/features/home/presentation/widgets/home_card_location_widget.dart';
import 'package:hris/features/home/presentation/widgets/home_header_widget.dart';
import 'package:hris/features/home/presentation/widgets/home_live_time_widget.dart';
import 'package:hris/features/home/presentation/widgets/home_status_attendance_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsetsGeometry.all(16),
            child: Column(
              crossAxisAlignment: .center,
              spacing: 32,
              children: [
                HomeHeaderWidget(),
                HomeLiveTimeWidget(),
                HomeCardLocationWidget(),
                HomeStatusAttendanceWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
