import 'package:flutter/material.dart';
import 'package:flutter_challenge1_yuta_ktd/view/component/basic_text.dart';
import 'package:flutter_challenge1_yuta_ktd/view/component/style/basic_text_style.dart';

import '../../constant/decolation_style.dart';

class LinkTextButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  final Color? color;
  final Image? suffixIcon;
  const LinkTextButton(
    this.text, {
    required this.onPressed,
    this.color = availableColor,
    this.suffixIcon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 19.0,
      width: 173.0,
      child: TextButton(
        onPressed: onPressed,
        style: ButtonStyle(
          foregroundColor: MaterialStateProperty.all(color),
          padding: MaterialStateProperty.all(EdgeInsets.zero),
        ),
        child: Row(
          children: [
            BasicText(
              text,
              style: BasicTextStyle(
                decoration: TextDecoration.underline,
                color: color,
              ),
            ),
            const SizedBox(width: 3.0),
            suffixIcon ?? const SizedBox.shrink(),
          ],
        ),
      ),
    );
  }
}
