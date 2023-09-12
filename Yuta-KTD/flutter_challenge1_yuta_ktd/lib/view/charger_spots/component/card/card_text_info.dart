import 'package:flutter/material.dart';
import 'package:flutter_challenge1_yuta_ktd/gen/assets.gen.dart';
import 'package:flutter_challenge1_yuta_ktd/view/component/basic_text.dart';
import 'package:openapi/models.dart';

import '../../../../constant/decolation_style.dart';
import 'card_text_infos/available_charger.dart';
import 'card_text_infos/business_hours.dart';
import 'card_text_infos/charger_power.dart';
import 'card_text_infos/map_launch_button.dart';
import 'card_text_infos/regular_holiday.dart';

class CardTextInfo extends StatelessWidget {
  final String name;
  final num latitude;
  final num longitude;
  final List<ChargerSpotServiceTime> chargerSpotServiceTimes;
  final List<ChargerDevice> chargerDevices;
  final NowAvailable? nowAvailable;

  const CardTextInfo({
    super.key,
    required this.name,
    required this.latitude,
    required this.longitude,
    required this.chargerSpotServiceTimes,
    required this.chargerDevices,
    this.nowAvailable,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _cardTitle(name),
          const SizedBox(height: 10.0),
          AvailableCharger(chargerDevices),
          heightBox12,
          ChargerPower(chargerDevices),
          heightBox12,
          BusinessHours(
            chargerSpotServiceTimes,
            nowAvailable,
          ),
          heightBox12,
          RegularHoliday(chargerSpotServiceTimes),
          heightBox12,
          // url_launcher使って内部アプリ呼び出し
          MapLaunchButton(toLat: latitude, toLng: longitude),
        ],
      ),
    );
  }

  Widget _cardTitle(String name) {
    return SizedBox(
      height: 23.0,
      child: BasicText(
        name,
        fontSize: 18.0,
        fontWeight: FontWeight.w700,
        overflow: TextOverflow.ellipsis, // タイトルが長すぎた時は省略する
      ),
    );
  }
}
