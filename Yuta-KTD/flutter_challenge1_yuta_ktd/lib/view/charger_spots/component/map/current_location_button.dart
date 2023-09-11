import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../../../constant/decolation_style.dart';
import '../../../../core/location/location_provider.dart';
import '../../../../provider/charger_spots_async_provider.dart';
import '../../../../provider/map_controller_completer_provider.dart';
import '../../../../provider/show_card_provider.dart';
import '../../../../provider/show_search_button_provider.dart';

/// 現在位置表示ボタン
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
    ref.read(showCardProvider.notifier).state = false;
    ref.read(showSearchButtonProvider.notifier).state = false;
    final LatLngBounds visibleRegion = await mapController.getVisibleRegion();
    final LatLng southwest = visibleRegion.southwest;
    final LatLng northeast = visibleRegion.northeast;
    await ref.read(chargerSpotsAsyncProvider.notifier).serchChargerSpots(
          swLat: southwest.latitude.toString(),
          swLng: southwest.longitude.toString(),
          neLat: northeast.latitude.toString(),
          neLng: northeast.longitude.toString(),
        );
  }
}
