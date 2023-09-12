import 'package:flutter/material.dart';
import 'package:flutter_challenge1_yuta_ktd/view/component/style/basic_text_style.dart';

class BasicText extends StatelessWidget {
  final String text;
  final BasicTextStyle? style;
  const BasicText(
    this.text, {
    this.style,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: style,
      // 日本語と英数字の高さを揃えるために、行の最低限の高さを制御する
      strutStyle: const StrutStyle(height: 1.4, fontSize: 14.0),
    );
  }
}
