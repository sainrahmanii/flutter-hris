// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class TextBodySmall extends StatelessWidget {
  final String textBodySmall;
  final Color color;
  final bool center;
  const TextBodySmall({
    super.key,
    required this.textBodySmall,
    required this.color,
    required this.center,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      textBodySmall,
      textAlign: center ? TextAlign.center : TextAlign.left,
      style: TextStyle(
        fontWeight: FontWeight.normal,
        fontSize: 12,
        color: color,
      ),
    );
  }
}
