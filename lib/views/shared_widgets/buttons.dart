import 'package:flutter/material.dart';
import 'package:marketplace_app/utils/utils.dart';

import 'package:marketplace_app/views/shared_widgets/text_style.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    required this.title, required this.onPressed, super.key,
  });

  final String title;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
      color: kButtonColor,
      elevation: 0,
      padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 11),
      textColor: Colors.white,
      child: SubText(
        text: title,
        foreground: white,
        textSize: 12,
        fontWeight: FontWeight.w600,
      ),
      onPressed: () {},
    );
  }
}
