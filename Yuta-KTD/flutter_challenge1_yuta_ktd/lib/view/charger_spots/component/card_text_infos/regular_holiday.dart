import 'package:flutter/material.dart';
import 'package:flutter_challenge1_yuta_ktd/gen/assets.gen.dart';
import 'package:flutter_challenge1_yuta_ktd/view/charger_spots/component/card_text.dart';
import 'package:flutter_challenge1_yuta_ktd/view/charger_spots/component/card_text_infos/card_text_info_title.dart';
import 'package:openapi/models.dart';

/// 定休日一覧
class RegularHoliday extends StatelessWidget {
  final List<ChargerSpotServiceTime> chargerSpotServiceTimes;
  const RegularHoliday(this.chargerSpotServiceTimes, {super.key});

  @override
  Widget build(BuildContext context) {
    // 定休日の文字配列を作成
    final List<String?> regularHoliday = chargerSpotServiceTimes
        .where((element) {
          return element.businessDay == BusinessDay.no;
        })
        .map((e) => e.day.displayName)
        .toList();
    return SizedBox(
      height: 19.0,
      child: Row(
        children: [
          CardTextInfoTitle(
            title: '定休日',
            image: Assets.today.image(width: 16.0, height: 16.0),
          ),
          regularHoliday.isEmpty
              ? const CardText('-')
              : Expanded(
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: regularHoliday.length,
                    itemBuilder: (_, index) {
                      bool isLast = index == regularHoliday.length - 1;
                      final holidayText = isLast
                          ? '${regularHoliday[index]}'
                          : '${regularHoliday[index]}、';
                      return CardText(holidayText);
                    },
                  ),
                ),
        ],
      ),
    );
  }
}

// sunday(displayName: '日曜日')みたいにしようと思ったけど既存で自動生成のものがあるので拡張する
extension DayDisplayNameExtension on Day {
  String get displayName => switch (this) {
        Day.sunday => '日曜日',
        Day.monday => '月曜日',
        Day.tuesday => '火曜日',
        Day.wednesday => '水曜日',
        Day.thursday => '木曜日',
        Day.friday => '金曜日',
        Day.saturday => '土曜日',
        Day.holiday => '祝日',
        Day.weekday => '平日',
      };
}
