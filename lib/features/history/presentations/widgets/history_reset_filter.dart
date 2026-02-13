import 'package:flutter/material.dart';
import 'package:hris/components/atoms/atom_button.dart';
import 'package:hris/components/atoms/atom_text.dart';
import 'package:hris/components/molecules/molecules_dropdown_field.dart';
import 'package:hris/core/themes/color_theme.dart';

class HistoryResetFilter extends StatelessWidget {
  const HistoryResetFilter({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: .start,
      spacing: 8,
      children: [
        Row(
          mainAxisAlignment: .spaceBetween,
          children: [
            AtomText.bodyMediumBold(
              'PERIODE',
              TextAlign.left,
              ColorTheme().white,
            ),
            AtomButton(
              label: 'Reset Filter',
              variant: AtomButtonVariant.text,
              onPressed: () {},
            ),
          ],
        ),
        Row(
          mainAxisAlignment: .spaceBetween,
          children: [
            MoleculesDropdownField(
              text: 'Januari 2026',
              prefixIcon: Icons.calendar_month_rounded,
              suffixIcon: Icons.keyboard_arrow_down_rounded,
            ),
            MoleculesDropdownField(
              text: 'Semua Status',
              suffixIcon: Icons.keyboard_arrow_down_rounded,
            ),
          ],
        ),
        AtomText.bodyMediumBold(
          'Daftar Kehadiran',
          TextAlign.left,
          ColorTheme().white,
        ),
      ],
    );
  }
}
