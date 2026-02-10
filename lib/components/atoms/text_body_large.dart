import 'package:flutter/material.dart';

class TextBodyLarge extends StatelessWidget {
  final String textBodyLarge;
  const TextBodyLarge({super.key, required this.textBodyLarge});

  @override
  Widget build(BuildContext context) {
    return Text(
      textBodyLarge,
      style: TextStyle(
        fontWeight: FontWeight.normal,
        fontSize: 16,
        color: Color(0xFFB9B9B9),
      ),
    );
  }
}
