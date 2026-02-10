import 'package:flutter/material.dart';
import 'package:hris/core/constants/constant_sizes.dart';

enum CustomButtonVariant { elevated, outlined, text }

class CustomButton extends StatelessWidget {
  final String label;
  final CustomButtonVariant variant;
  final VoidCallback onPressed;
  const CustomButton({
    super.key,
    required this.label,
    required this.variant,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    if (variant == CustomButtonVariant.elevated) {
      return ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.black,
          backgroundColor: Color(0xFFF8B522),
          minimumSize: Size(double.infinity, 56),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(ConstantSizes.defaultRadius),
          ),
        ),
        child: Text(
          label,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
      );
    }

    if (variant == CustomButtonVariant.outlined) {
      return OutlinedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          foregroundColor: Color(0xFFF8B522),
          minimumSize: Size(double.infinity, 56),
          shape: RoundedRectangleBorder(
            side: BorderSide(width: 0.5, color: Colors.grey),
            borderRadius: BorderRadius.circular(ConstantSizes.defaultRadius),
          ),
        ),
        child: Text(
          label,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
      );
    }

    return TextButton(
      onPressed: onPressed,
      child: Text(label, style: TextStyle(color: Color(0xffF8B522))),
    );
  }
}
