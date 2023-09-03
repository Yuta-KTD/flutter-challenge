import 'package:flutter/material.dart';
import 'package:flutter_challenge1_yuta_ktd/gen/assets.gen.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:openapi/model/charger_spot.dart';
import 'package:openapi/model/charger_spot_image.dart';

class ChargerSpotsInfoCard extends ConsumerWidget {
  final ChargerSpot chargerSpot;
  const ChargerSpotsInfoCard({super.key, required this.chargerSpot});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Card(
      child: SizedBox(
        width: 364.0,
        child: Column(
          children: [
            Expanded(
              child: _images(chargerSpot.images),
            ),
            _cardTitle(chargerSpot.name),
          ],
        ),
      ),
    );
  }

  Widget _images(List<ChargerSpotImage> imagesUrl) {
    if (imagesUrl.isEmpty) {
      return Assets.cardWhenNoImages.image();
    }
    return ListView.builder(
      itemCount: imagesUrl.length,
      itemBuilder: (_, index) {
        final url = imagesUrl[index].url;
        return Image.network(url);
      },
    );
  }

  Widget _cardTitle(String name) {
    return Text(
      name,
      style: const TextStyle(fontSize: 18.0, fontWeight: FontWeight.w700),
    );
  }
}
