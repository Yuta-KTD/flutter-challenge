import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../../../constant/decolation_style.dart';
import '../../../../core/location/location_provider.dart';
import '../../../../provider/charger_spots_async_provider.dart';

class CurrentLocationButton extends ConsumerWidget {
  final Completer<GoogleMapController> controller;
  const CurrentLocationButton({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return FloatingActionButton(
      onPressed: () => _moveCamera(ref),
      backgroundColor: textColor,
      child: const Icon(Icons.gps_fixed),
    );
  }

  // 位置データを取得し、カメラを移動させる
  Future<void> _moveCamera(WidgetRef ref) async {
    final position = await ref.refresh(locationProvider.future);
    final mapController = await controller.future;
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
    final chargerSpotsNotifire = ref.read(chargerSpotsAsyncProvider.notifier);
    final LatLngBounds visibleRegion = await mapController.getVisibleRegion();
    final LatLng southwest = visibleRegion.southwest;
    final LatLng northeast = visibleRegion.northeast;
    await chargerSpotsNotifire.serchChargerSpots(
      swLat: southwest.latitude.toString(),
      swLng: southwest.longitude.toString(),
      neLat: northeast.latitude.toString(),
      neLng: northeast.longitude.toString(),
    );
  }
}
