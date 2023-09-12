import 'package:flutter/material.dart';
import 'package:flutter_challenge1_yuta_ktd/constant/decolation_style.dart';
import 'package:flutter_challenge1_yuta_ktd/gen/assets.gen.dart';
import 'package:flutter_challenge1_yuta_ktd/view/charger_spots/component/card/card_text_infos/card_text_info_title.dart';
import 'package:openapi/model/charger_spot_service_time.dart';
import 'package:openapi/model/now_available.dart';

import '../card_text.dart';

/// 営業時間に関する情報を出力する
class BusinessHours extends StatelessWidget {
  final List<ChargerSpotServiceTime> chargerSpotServiceTimes;
  final NowAvailable? nowAvailable;
  const BusinessHours(
    this.chargerSpotServiceTimes,
    this.nowAvailable, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final List<ChargerSpotServiceTime> todayServiceTimes =
        chargerSpotServiceTimes.where((element) => element.today).toList();

    // 今日の曜日に関する営業時間情報がない場合
    if (todayServiceTimes.isEmpty) {
      return Row(
        children: [
          Assets.image.watchLator.image(width: 16.0, height: 16.0),
          const CardTextInfoTitle(
            title: '営業時間外',
            color: unavailableColor,
          ),
        ],
      );
    }

    // スポットが営業中かどうか
    final bool available =
        (nowAvailable != null) && (nowAvailable == NowAvailable.yes);
    //　営業時間情報が複数存在する場合を考慮し、営業時間に関する配列を作る
    final List<String> serviceTimes = [];
    for (var todayServiceTime in todayServiceTimes) {
      final startTime = todayServiceTime.startTime;
      final endTime = todayServiceTime.endTime;
      final String? serviceTime = (startTime == null || endTime == null)
          ? null
          : '${todayServiceTime.startTime} - ${todayServiceTime.endTime}';
      if (serviceTime != null) {
        serviceTimes.add(serviceTime);
      }
    }

    return SizedBox(
      height: 19.0,
      child: Row(
        children: [
          Assets.image.watchLator.image(width: 16.0, height: 16.0),
          CardTextInfoTitle(
            // unKnownの場合も営業時間外とする
            title: available ? '営業中' : '営業時間外',
            color: available ? availableColor : unavailableColor,
          ),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: serviceTimes.length,
              itemBuilder: (_, index) {
                bool isLast = index == serviceTimes.length - 1;
                final serviceTimeText =
                    isLast ? serviceTimes[index] : '${serviceTimes[index]}、';
                return CardText(serviceTimeText);
              },
            ),
          ),
        ],
      ),
    );
  }
}
