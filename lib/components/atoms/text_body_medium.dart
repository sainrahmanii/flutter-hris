import 'package:flutter/material.dart';

class TextBodyMedium extends StatelessWidget {
  final String textBodyMedium;
  final Color color;
  final FontWeight variant;
  const TextBodyMedium({
    super.key,
    required this.textBodyMedium,
    required this.color,
    required this.variant,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      textBodyMedium,
      style: TextStyle(fontWeight: variant, fontSize: 14, color: color),
    );
  }
}
