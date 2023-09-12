import 'package:flutter/material.dart';
import 'package:flutter_challenge1_yuta_ktd/gen/assets.gen.dart';
import 'package:flutter_challenge1_yuta_ktd/view/function/map_launcher.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../core/location/location_provider.dart';
import '../../../../component/link_text_button.dart';

class MapLaunchButton extends ConsumerWidget {
  final num toLat;
  final num toLng;
  const MapLaunchButton({required this.toLat, required this.toLng, super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return LinkTextButton(
      '地図アプリで経路を見る',
      onPressed: () => _onPressed(ref),
      suffixIcon: Assets.vector.image(width: 16.0, height: 16.0),
    );
  }

  Future<void> _onPressed(WidgetRef ref) async {
    final position = await ref.read(locationProvider.future);
    if (position?.latitude == null || position?.longitude == null) {
      return;
    }
    MapLauncher()
        .openFromToMap(fromPosition: position!, toLat: toLat, toLng: toLng);
  }
}
