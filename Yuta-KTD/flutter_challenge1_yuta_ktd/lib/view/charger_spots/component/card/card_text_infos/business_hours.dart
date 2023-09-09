import 'package:flutter/material.dart';
import 'package:flutter_challenge1_yuta_ktd/constant/decolation_style.dart';
import 'package:flutter_challenge1_yuta_ktd/gen/assets.gen.dart';
import 'package:flutter_challenge1_yuta_ktd/view/charger_spots/component/card/card_text_infos/card_text_info_title.dart';
import 'package:openapi/models.dart';

import '../card_text.dart';

/// 営業時間に関する情報を出力する
class BusinessHours extends StatelessWidget {
  final List<ChargerSpotServiceTime> chargerSpotServiceTimes;
  const BusinessHours(this.chargerSpotServiceTimes, {super.key});

  @override
  Widget build(BuildContext context) {
    final ChargerSpotServiceTime todayServiceTime =
        chargerSpotServiceTimes.singleWhere((element) => element.today);

    final isBusinessDay = todayServiceTime.businessDay == BusinessDay.yes;
    final startTime = todayServiceTime.startTime;
    final endTime = todayServiceTime.endTime;
    final String serviceTime = (startTime == null || endTime == null)
        ? ''
        : '${todayServiceTime.startTime} - ${todayServiceTime.endTime}';

    return SizedBox(
      height: 19.0,
      child: Row(
        children: [
          CardTextInfoTitle(
            // unKnownの場合も営業時間外とする
            title: isBusinessDay ? '営業中' : '営業時間外',
            color: isBusinessDay ? availableColor : unavailableColor,
            image: Assets.watchLator.image(width: 16.0, height: 16.0),
          ),
          CardText(serviceTime),
        ],
      ),
    );
  }
}
