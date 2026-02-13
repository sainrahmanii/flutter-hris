import 'package:flutter/material.dart';
import 'package:hris/components/atoms/atom_card.dart';
import 'package:hris/components/molecules/molecules_user_details.dart';
import 'package:hris/core/themes/color_theme.dart';

class ProfileUserDetails extends StatelessWidget {
  const ProfileUserDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return AtomCard(
      smallPadding: false,
      child: Column(
        spacing: 16,
        children: [
          MoleculesUserDetails(
            label: 'NIP',
            value: '9182736928',
            icon: Icons.assignment_ind_rounded,
          ),
          Divider(color: ColorTheme().borderGrey),
          MoleculesUserDetails(
            label: 'Division',
            value: 'Mobile Developer',
            icon: Icons.domain_rounded,
          ),
          Divider(color: ColorTheme().borderGrey),
          MoleculesUserDetails(
            label: 'Email',
            value: 'husainrahmani127@gmail.com',
            icon: Icons.email_rounded,
          ),
          Divider(color: ColorTheme().borderGrey),
          MoleculesUserDetails(
            label: 'Joined',
            value: 'Februari 2026',
            icon: Icons.calendar_month_rounded,
          ),
        ],
      ),
    );
  }
}
