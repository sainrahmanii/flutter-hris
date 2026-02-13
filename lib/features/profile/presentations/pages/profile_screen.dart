import 'package:flutter/material.dart';
import 'package:hris/components/organism/organism_app_bar.dart';
import 'package:hris/features/profile/presentations/widgets/profile_button.dart';
import 'package:hris/features/profile/presentations/widgets/profile_identity.dart';
import 'package:hris/features/profile/presentations/widgets/profile_user_details.dart';
import 'package:hris/features/profile/presentations/widgets/profile_version.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kTextTabBarHeight),
        child: OrganismAppBar(text: 'Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            spacing: 16,
            children: [
              ProfileIdentity(),
              ProfileUserDetails(),
              ProfileButton(),
              ProfileVersion(),
            ],
          ),
        ),
      ),
    );
  }
}
