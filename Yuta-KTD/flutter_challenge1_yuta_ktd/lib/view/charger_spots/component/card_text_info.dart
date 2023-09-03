import 'package:flutter/material.dart';
import 'package:openapi/models.dart';

import '../../../constant/decolation_style.dart';
import 'card_text.dart';
import 'card_text_infos/available_charger.dart';
import 'card_text_infos/business_hours.dart';
import 'card_text_infos/charger_power.dart';
import 'card_text_infos/regular_holiday.dart';

class CardTextInfo extends StatelessWidget {
  final String name;
  final num latitude;
  final num longitude;
  final List<ChargerSpotServiceTime> chargerSpotServiceTimes;
  // NOTE: 配列の要素数を台数とする
  // DisplayStatusがavailableのものが利用可能数になる
  final List<ChargerDevice> chargerDevices;

  const CardTextInfo({
    super.key,
    required this.name,
    required this.latitude,
    required this.longitude,
    required this.chargerSpotServiceTimes,
    required this.chargerDevices,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      width: 365.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _cardTitle(name),
          const SizedBox(height: 8.0),
          AvailableCharger(chargerDevices),
          heightBox12,
          ChargerPower(chargerDevices),
          heightBox12,
          BusinessHours(chargerSpotServiceTimes),
          heightBox12,
          RegularHoliday(chargerSpotServiceTimes),
          heightBox12,
          // TODO: 地図検索機能
          // url_launcher使って内部アプリ呼び出し
          const CardText('地図アプリで経路を見る')
        ],
      ),
    );
  }

  Widget _cardTitle(String name) {
    return SizedBox(
      height: 25.0,
      child: Text(
        name,
        style: const TextStyle(
          fontSize: 18.0,
          fontWeight: FontWeight.w700,
          overflow: TextOverflow.ellipsis,
          color: textColor,
        ),
      ),
    );
  }
}
