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
      child: SizedBox(
        width: 364.0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 72.0,
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(cardCircular),
                  topRight: Radius.circular(cardCircular),
                ),
                child: _images(chargerSpot.images),
              ),
            ),
            CardTextInfo(
              name: chargerSpot.name,
              latitude: chargerSpot.latitude,
              longitude: chargerSpot.longitude,
              chargerSpotServiceTimes: chargerSpot.chargerSpotServiceTimes,
              chargerDevices: chargerSpot.chargerDevices,
            ),
          ],
        ),
      ),
    );
  }

  /// カード上部の画像
  Widget _images(List<ChargerSpotImage> imagesUrl) {
    if (imagesUrl.isEmpty) {
      return Assets.cardWhenNoImages.image(fit: BoxFit.cover);
    }
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: imagesUrl.length,
      itemBuilder: (_, index) {
        final url = imagesUrl[index].url;
        // 最後の要素かどうかをチェック
        // FIXME: 右側に少しだけ間隔が残ってしまっている
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
