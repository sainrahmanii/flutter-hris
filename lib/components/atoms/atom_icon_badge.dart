import 'package:flutter/material.dart';

class AtomIconBadge extends StatelessWidget {
  final IconData icon;
  final Color color;
  final BoxShape? boxShape;
  const AtomIconBadge({
    super.key,
    required this.icon,
    required this.color,
    this.boxShape,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.all(6),
      decoration: BoxDecoration(
        shape: boxShape ?? BoxShape.rectangle,
        color: color.withValues(alpha: 0.2),
        borderRadius: (boxShape == BoxShape.circle)
            ? null
            : BorderRadius.circular(12),
      ),
      child: Icon(icon, color: color, size: 24),
    );
  }
}
