import 'package:flutter/material.dart';

import '../../constant/decolation_style.dart';

class BasicText extends StatelessWidget {
  final String text;
  final Color? color;
  final double? fontSize;
  final FontWeight? fontWeight;
  final TextOverflow? overflow;
  final bool showUnderLine;
  const BasicText(
    this.text, {
    this.color = textColor,
    // デフォルトも14だけど明示的に指定
    this.fontSize = 14.0,
    this.fontWeight = FontWeight.normal,
    this.overflow,
    this.showUnderLine = false,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color,
        overflow: overflow,
        decoration: showUnderLine ? TextDecoration.underline : null,
      ),
      // 日本語と英数字の高さを揃えるために、行の最低限の高さを制御する
      strutStyle: const StrutStyle(height: 1.4, fontSize: 14.0),
    );
  }
}
