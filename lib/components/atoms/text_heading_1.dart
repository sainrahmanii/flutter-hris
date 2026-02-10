import 'package:flutter/material.dart';

class TextHeading1 extends StatelessWidget {
  final String textHeading1;
  const TextHeading1({super.key, required this.textHeading1});

  @override
  Widget build(BuildContext context) {
    return Text(
      textHeading1,
      style: TextStyle(
        fontWeight: FontWeight.w700,
        fontSize: 32,
        color: Colors.white,
      ),
    );
  }
}
