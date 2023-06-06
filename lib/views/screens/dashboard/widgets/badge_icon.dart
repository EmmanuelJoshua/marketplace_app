import 'package:flutter/material.dart';
import 'package:marketplace_app/utils/theme.dart';

class BadgeIcon extends StatelessWidget {

  const BadgeIcon({
    required this.value, required this.icon, this.size = 32,
    this.color = black,
    super.key,
  });
  final IconData icon;
  final double size;
  final String value;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Icon(
          icon,
          size: 32,
          color: color,
        ),
        Positioned(
          top: 0,
          right: 0,
          child: IntrinsicWidth(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 2),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(3),
                color: kRed,
              ),
              child: Text(
                value,
                style: const TextStyle(
                  color: white,
                  fontSize: 10,
                  fontWeight: FontWeight.w600,
                  fontStyle: FontStyle.normal,
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
