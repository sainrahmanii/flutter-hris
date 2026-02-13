import 'package:flutter/material.dart';
import 'package:hris/components/atoms/atom_button.dart';
import 'package:hris/core/themes/color_theme.dart';

class ProfileButton extends StatelessWidget {
  const ProfileButton({super.key});

  @override
  Widget build(BuildContext context) {
    return AtomButton(
      label: 'Logout',
      variant: AtomButtonVariant.outlined,
      backgroundColor: ColorTheme().red.withValues(alpha: 0.2),
      foregroundColor: ColorTheme().red,
      borderColor: ColorTheme().red,
      onPressed: () {},
    );
  }
}
