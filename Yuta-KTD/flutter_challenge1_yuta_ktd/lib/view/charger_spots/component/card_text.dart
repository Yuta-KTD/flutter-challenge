import 'package:flutter/material.dart';
import 'package:flutter_challenge1_yuta_ktd/constant/decolation_style.dart';

class CardText extends StatelessWidget {
  final String text;
  final Color? color;
  const CardText(this.text, {this.color, super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 19.0,
      child: Text(
        text,
        style: TextStyle(
          // デフォルトも14だけど明示的に指定
          fontSize: 14.0,
          fontWeight: FontWeight.normal,
          color: color ?? textColor,
        ),
      ),
    );
  }
}
