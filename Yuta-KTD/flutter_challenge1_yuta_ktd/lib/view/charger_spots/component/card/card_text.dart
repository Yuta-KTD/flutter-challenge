import 'package:flutter/material.dart';
import 'package:flutter_challenge1_yuta_ktd/constant/decolation_style.dart';

import '../../../component/basic_text.dart';

class CardText extends StatelessWidget {
  final String text;
  final Color? color;
  const CardText(this.text, {this.color = textColor, super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 19.0,
      child: BasicText(
        text,
        color: color,
      ),
    );
  }
}
