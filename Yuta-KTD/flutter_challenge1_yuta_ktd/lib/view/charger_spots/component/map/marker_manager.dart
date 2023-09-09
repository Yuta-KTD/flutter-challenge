import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:openapi/models.dart';
import 'package:flutter/material.dart';

/// マーカー出力用クラス
class MarkerManager {
  final PageController pageController;
  final AsyncValue<Map<String, int>> iconCardConnection;
  final Completer<GoogleMapController> mapControllerCompleter;
  final StateController<bool> showCardNotifire;
  MarkerManager({
    required this.pageController,
    required this.iconCardConnection,
    required this.mapControllerCompleter,
    required this.showCardNotifire,
  });

  Set<Marker> createMarkers({required List<ChargerSpot> chargerSpots}) {
    final markers = <Marker>{};
    for (var chargerSpot in chargerSpots) {
      final lat = chargerSpot.latitude.toDouble();
      final lng = chargerSpot.longitude.toDouble();
      final latLng = LatLng(lat, lng);
      markers.add(Marker(
        markerId: MarkerId(chargerSpot.uuid),
        position: latLng,
        onTap: () => _onTap(
          latLng: latLng,
          uuid: chargerSpot.uuid,
          pageController: pageController,
          iconCardConnection: iconCardConnection,
          mapControllerCompleter: mapControllerCompleter,
          showCardNotifire: showCardNotifire,
        ),
      ));
    }
    return markers;
  }

  Future<void> _onTap({
    required LatLng latLng,
    required String uuid,
    required PageController pageController,
    required AsyncValue<Map<String, int>> iconCardConnection,
    required Completer<GoogleMapController> mapControllerCompleter,
    required StateController<bool> showCardNotifire,
  }) async {
    final mapController = await mapControllerCompleter.future;
    await mapController.moveCamera(
      CameraUpdate.newCameraPosition(
        CameraPosition(
          target: latLng,
          zoom: 15,
        ),
      ),
    );
    if (iconCardConnection.hasError || iconCardConnection.value!.isEmpty) {
      return;
    }
    final cardIndex = iconCardConnection.value![uuid];
    pageController.jumpToPage(cardIndex!);
    // カードをせり出させる
    final state = showCardNotifire.state;
    if (state) return;
    showCardNotifire.state = true;
  }
}
