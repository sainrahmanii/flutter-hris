import 'package:flutter/material.dart';

class TextBodyMedium extends StatelessWidget {
  final String textBodyMedium;
  const TextBodyMedium({super.key, required this.textBodyMedium});

  @override
  Widget build(BuildContext context) {
    return Text(
      textBodyMedium,
      style: TextStyle(
        fontWeight: FontWeight.normal,
        fontSize: 14,
        color: Color(0xFFB9B9B9),
      ),
    );
  }
}
