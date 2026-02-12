import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hris/core/themes/color_theme.dart';

class AtomText extends StatelessWidget {
  final String text;
  final TextStyle style;
  final TextAlign? textAlign;
  const AtomText._({
    required this.text,
    required this.style,
    required this.textAlign,
  });

  factory AtomText.displayLarge(
    String text,
    TextAlign? textAlign,
    Color? color,
  ) {
    return AtomText._(
      text: text,
      style: GoogleFonts.plusJakartaSans(
        fontWeight: FontWeight.w700,
        fontSize: 48,
        color: color,
      ),
      textAlign: textAlign,
    );
  }

  factory AtomText.h1(String text, TextAlign? textAlign) {
    return AtomText._(
      text: text,
      style: GoogleFonts.plusJakartaSans(
        fontWeight: FontWeight.w700,
        fontSize: 32,
        color: ColorTheme().white,
      ),
      textAlign: textAlign,
    );
  }

  factory AtomText.h2(String text, TextAlign? textAlign) {
    return AtomText._(
      text: text,
      style: GoogleFonts.plusJakartaSans(
        fontWeight: FontWeight.w600,
        fontSize: 24,
        color: ColorTheme().white,
      ),
      textAlign: textAlign,
    );
  }

  factory AtomText.bodyLarge(String text, TextAlign? textAlign) {
    return AtomText._(
      text: text,
      style: GoogleFonts.plusJakartaSans(
        fontWeight: FontWeight.w400,
        fontSize: 16,
        color: ColorTheme().grey,
      ),
      textAlign: textAlign,
    );
  }

  factory AtomText.bodyLargeBold(
    String text,
    TextAlign? textAlign,
    Color? color,
  ) {
    return AtomText._(
      text: text,
      style: GoogleFonts.plusJakartaSans(
        fontWeight: FontWeight.w700,
        fontSize: 16,
        color: color,
      ),
      textAlign: textAlign,
    );
  }

  factory AtomText.bodyMedium(String text, TextAlign? textAlign, Color? color) {
    return AtomText._(
      text: text,
      style: GoogleFonts.plusJakartaSans(
        fontWeight: FontWeight.w400,
        fontSize: 14,
        color: color,
      ),
      textAlign: textAlign,
    );
  }

  factory AtomText.bodyMediumBold(
    String text,
    TextAlign? textAlign,
    Color? color,
  ) {
    return AtomText._(
      text: text,
      style: GoogleFonts.plusJakartaSans(
        fontWeight: FontWeight.w700,
        fontSize: 14,
        color: color,
      ),
      textAlign: textAlign,
    );
  }

  factory AtomText.bodySmall(String text, TextAlign? textAlign, Color? color) {
    return AtomText._(
      text: text,
      style: GoogleFonts.plusJakartaSans(
        fontWeight: FontWeight.w400,
        fontSize: 12,
        color: color,
      ),
      textAlign: textAlign,
    );
  }

  factory AtomText.bodySmallBold(
    String text,
    TextAlign? textAlign,
    Color? color,
  ) {
    return AtomText._(
      text: text,
      style: GoogleFonts.plusJakartaSans(
        fontWeight: FontWeight.w700,
        fontSize: 12,
        color: color,
      ),
      textAlign: textAlign,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Text(text, style: style, textAlign: textAlign);
  }
}
