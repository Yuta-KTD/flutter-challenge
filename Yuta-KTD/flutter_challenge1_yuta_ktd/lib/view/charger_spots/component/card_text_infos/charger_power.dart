import 'package:flutter/material.dart';
import 'package:flutter_challenge1_yuta_ktd/gen/assets.gen.dart';
import 'package:openapi/model/charger_device.dart';

import '../card_text.dart';

/// 充電出力一覧
class ChargerPower extends StatelessWidget {
  final List<ChargerDevice> chargerDevices;
  const ChargerPower(this.chargerDevices, {super.key});

  @override
  Widget build(BuildContext context) {
    Set<String> uniqueList = {};
    for (var element in chargerDevices) {
      uniqueList.add(element.power);
    }

    // SetをListに変換
    List<String> resultList = uniqueList.toList();
    // 今後増える可能性もあるのでListView.builderで作成する
    return SizedBox(
      height: 19.0,
      child: Row(
        children: [
          Assets.bolt.image(width: 16.0, height: 16.0),
          Container(
            width: 78.0,
            padding: const EdgeInsets.only(right: 10.0),
            child: const CardText('充電出力'),
          ),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: resultList.length,
              itemBuilder: (_, index) {
                bool isLast = index == resultList.length - 1;
                final boltText = isLast
                    ? '${resultList[index]}kW'
                    : '${resultList[index]}kW、';
                return CardText(boltText);
              },
            ),
          ),
        ],
      ),
    );
  }
}
