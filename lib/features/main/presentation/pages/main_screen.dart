import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hris/components/organism/organism_navigation_bottom.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key, required this.navigationShell});

  final StatefulNavigationShell navigationShell;

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.navigationShell,
      bottomNavigationBar: OrganismNavigationBottom(
        navigationShell: widget.navigationShell,
      ),
    );
  }
}
