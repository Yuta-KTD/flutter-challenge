import 'package:flutter/material.dart';
import 'package:flutter_challenge1_yuta_ktd/gen/assets.gen.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:openapi/model/charger_spot.dart';
import 'package:openapi/model/charger_spot_image.dart';

import 'card_text_info.dart';

class ChargerSpotsInfoCard extends ConsumerWidget {
  final ChargerSpot chargerSpot;
  const ChargerSpotsInfoCard({super.key, required this.chargerSpot});

  final cardCircular = 12.0;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(cardCircular),
      ),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 72.0,
            child: _images(chargerSpot.images),
          ),
          CardTextInfo(
            name: chargerSpot.name,
            latitude: chargerSpot.latitude,
            longitude: chargerSpot.longitude,
            chargerSpotServiceTimes: chargerSpot.chargerSpotServiceTimes,
            chargerDevices: chargerSpot.chargerDevices,
            nowAvailable: chargerSpot.nowAvailable,
          ),
        ],
      ),
    );
  }

  /// カード上部の画像、枚数によって表示方法を変える
  Widget _images(List<ChargerSpotImage> imagesUrl) {
    if (imagesUrl.isEmpty) {
      return Assets.image.cardWhenNoImages.image(fit: BoxFit.cover);
    }
    if (imagesUrl.length == 1) {
      return SizedBox(
        width: double.infinity,
        child: Image.network(
          imagesUrl[0].url,
          fit: BoxFit.cover,
        ),
      );
    }
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: imagesUrl.length,
      itemBuilder: (_, index) {
        final url = imagesUrl[index].url;
        // 最後の要素かどうかをチェック
        bool isLast = index == imagesUrl.length - 1;
        return Container(
          width: 180.5,
          padding: EdgeInsets.only(right: isLast ? 0.0 : 2.0),
          child: Image.network(
            url,
            fit: BoxFit.cover,
          ),
        );
      },
    );
  }
}
