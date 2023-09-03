import 'package:flutter/material.dart';
import 'package:flutter_challenge1_yuta_ktd/gen/assets.gen.dart';
import 'package:openapi/models.dart';

import '../../../constant/decolation_style.dart';
import 'card_text.dart';
import 'card_text_infos/business_hours.dart';
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
          _avalilableCharger(chargerDevices),
          heightBox12,
          _chagerPower(chargerDevices),
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

  Widget _avalilableCharger(List<ChargerDevice> chargerDevices) {
    final int allDevices = chargerDevices.length;
    // DisplayStatus.availableの要素のみの配列の長さを使って、使用可能なデバイス数を計算
    final int availableDevices = chargerDevices
        .where((element) => element.displayStatus == DisplayStatus.available)
        .length;
    return Row(
      children: [
        Assets.power.image(width: 16.0, height: 16.0),
        Container(
          width: 78.0,
          padding: const EdgeInsets.only(right: 10.0),
          child: const CardText('利用可能'),
        ),
        // TODO: 残り代数によってテキストの色かえる（RichText使うことになるかな？）
        CardText('$availableDevices/$allDevices'),
      ],
    );
  }

  Widget _chagerPower(List<ChargerDevice> chargerDevices) {
    // 重複はしたくないので、Set型で作って、そのあとListに戻す
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
