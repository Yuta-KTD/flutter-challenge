import 'package:flutter/material.dart';
import 'package:flutter_challenge1_yuta_ktd/view/charger_spots/component/card/card_text.dart';

/// 各情報のタイトルとそのアイコン
class CardTextInfoTitle extends StatelessWidget {
  final String title;
  final Image image;
  final Color? color;
  const CardTextInfoTitle({
    required this.title,
    required this.image,
    this.color,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        image,
        Container(
          width: 78.0,
          padding: const EdgeInsets.only(right: 10.0),
          child: CardText(
            title,
            color: color,
          ),
        ),
      ],
    );
  }
}
