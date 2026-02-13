import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hris/core/themes/color_theme.dart';

class OrganismNavigationBottom extends StatelessWidget {
  final StatefulNavigationShell navigationShell;
  const OrganismNavigationBottom({super.key, required this.navigationShell});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: ColorTheme().black,
      selectedItemColor: ColorTheme().primary,
      unselectedItemColor: ColorTheme().white,
      selectedLabelStyle: GoogleFonts.plusJakartaSans(),
      unselectedLabelStyle: GoogleFonts.plusJakartaSans(),
      currentIndex: navigationShell.currentIndex,
      onTap: (int index) => navigationShell.goBranch(index),
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Beranda'),
        BottomNavigationBarItem(icon: Icon(Icons.history), label: 'Riwayat'),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profil'),
      ],
    );
  }
}
