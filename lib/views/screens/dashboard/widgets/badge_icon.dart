import 'package:flutter/material.dart';
import 'package:marketplace_app/utils/theme.dart';

class BadgeIcon extends StatelessWidget {
  const BadgeIcon({
    required this.value,
    required this.icon,
    this.size = 32,
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
        //Added to make icon theme constant
        Theme(
          data: ThemeData(
            iconTheme: const IconThemeData(),
          ),
          child: Icon(
            icon,
            size: 32,
            color: color,
          ),
        ),
        Positioned(
          top: 0,
          right: 0,
          child: Container(
            padding: value.length > 1
                ? const EdgeInsets.symmetric(horizontal: 4, vertical: 1)
                : const EdgeInsets.symmetric(horizontal: 7, vertical: 1),
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
        )
      ],
    );
  }
}
