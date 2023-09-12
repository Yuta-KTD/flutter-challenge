import 'package:flutter/material.dart';
import 'package:flutter_challenge1_yuta_ktd/gen/fonts.gen.dart';

import '../../../constant/decolation_style.dart';

class BasicTextStyle extends TextStyle {
  const BasicTextStyle({
    // デフォルトも14だけど明示的に指定
    double fontSize = 14.0,
    FontWeight fontWeight = FontWeight.normal,
    Color? color = textColor,
    TextOverflow? overflow,
    TextDecoration? decoration,
  }) : super(
          fontSize: fontSize,
          fontWeight: fontWeight,
          color: color,
          fontFamily: FontFamily.notoSansJP,
          overflow: overflow,
          decoration: decoration,
        );
}
