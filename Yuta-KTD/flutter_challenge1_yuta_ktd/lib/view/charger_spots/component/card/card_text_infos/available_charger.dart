import 'package:flutter/material.dart';
import 'package:flutter_challenge1_yuta_ktd/gen/assets.gen.dart';
import 'package:openapi/model/charger_device.dart';
import 'package:openapi/model/display_status.dart';

import '../../../../../constant/decolation_style.dart';
import 'card_text_info_title.dart';

/// 使用可能な充電スポットと充電スポットの総数を表示
class AvailableCharger extends StatelessWidget {
  final List<ChargerDevice> chargerDevices;
  const AvailableCharger(this.chargerDevices, {super.key});

  @override
  Widget build(BuildContext context) {
    final int allDevices = chargerDevices.length;
    // DisplayStatus.availableの要素のみの配列の長さを使って、使用可能なデバイス数を計算
    final int availableDevices = chargerDevices
        .where((element) => element.displayStatus == DisplayStatus.available)
        .length;
    return Row(
      children: [
        Assets.image.power.image(width: 16.0, height: 16.0),
        const CardTextInfoTitle(
          title: '利用可能',
        ),
        RichText(
          strutStyle: const StrutStyle(height: 1.35, fontSize: 14.0),
          text: TextSpan(
            style: const TextStyle(
              fontSize: 14.0,
              color: textColor,
            ),
            children: [
              TextSpan(
                text: availableDevices.toString(),
                style: TextStyle(
                  fontSize: 14.0,
                  color:
                      availableDevices == 0 ? noChargerColor : availableColor,
                ),
              ),
              const TextSpan(text: '/'),
              TextSpan(text: allDevices.toString()),
            ],
          ),
        ),
      ],
    );
  }
}
