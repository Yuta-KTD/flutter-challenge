import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_challenge1_yuta_ktd/provider/show_card_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../../../constant/decolation_style.dart';
import '../../../../core/location/location_provider.dart';
import '../../../../provider/map_controller_completer_provider.dart';

class CurrentLocationButton extends ConsumerStatefulWidget {
  const CurrentLocationButton({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _CurrentLocationButtonState();
}

class _CurrentLocationButtonState extends ConsumerState<CurrentLocationButton> {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () => _moveCamera(ref),
      backgroundColor: textColor,
      child: const Icon(Icons.gps_fixed),
    );
  }

  // 位置データを取得し、カメラを移動させる
  Future<void> _moveCamera(WidgetRef ref) async {
    final position = await ref.refresh(locationProvider.future);
    final Completer<GoogleMapController> mapControllerCompleter =
        ref.watch(mapControllerCompleterProvider);
    final mapController = await mapControllerCompleter.future;
    final latitude = position?.latitude;
    final longitude = position?.longitude;
    if (latitude == null || longitude == null) {
      return;
    }
    await mapController.moveCamera(
      CameraUpdate.newCameraPosition(
        CameraPosition(
          target: LatLng(latitude, longitude),
          zoom: 15, // zoomは匙加減
        ),
      ),
    );
    final showCardNotifire = ref.read(showCardProvider.notifier);
    showCardNotifire.state = false;
  }
}
