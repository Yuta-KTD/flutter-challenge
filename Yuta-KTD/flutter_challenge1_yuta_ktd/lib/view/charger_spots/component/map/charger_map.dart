import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:openapi/models.dart';

import '../../../../core/location/location_provider.dart';
import '../../../../provider/charger_spots_async_provider.dart';

/// GoogleMap
class ChargerMap extends ConsumerStatefulWidget {
  final VoidCallback? onTap;
  final Completer<GoogleMapController> controller;
  final void Function(GoogleMapController)? onMapCreated;
  final Position? position;
  const ChargerMap({
    super.key,
    required this.controller,
    this.onTap,
    this.onMapCreated,
    this.position,
  });

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ChargerMapState();
}

class _ChargerMapState extends ConsumerState<ChargerMap> {
  @override
  Widget build(BuildContext context) {
    final chargerSpotsProvider = ref.watch(chargerSpotsAsyncProvider);

    // TODO: Zoomについては実機検証必要（そもそもズームさせる必要ある？）
    final locationAsyncValue = ref.watch(locationProvider);
    return locationAsyncValue.when(
      data: (location) {
        return GoogleMap(
          onTap: (_) => widget.onTap,
          mapType: MapType.normal,
          myLocationEnabled: true,
          initialCameraPosition: CameraPosition(
            target: LatLng(
              location?.latitude ?? 36,
              location?.longitude ?? 140,
            ),
            zoom: 15,
          ),
          onMapCreated: _onMapCreated,
          myLocationButtonEnabled: false,
          markers: chargerSpotsProvider.when(
            data: (res) {
              return _markers(res.chargerSpots);
            },
            error: (error, _) {
              // ScaffoldMessenger.of(context).showSnackBar(
              //   SnackBar(content: Text(error.toString())),
              // );
              return <Marker>{};
            },
            loading: () {
              // TODO: 全面覆うローディングスクリーンだす？
              return <Marker>{};
            },
          ),
        );
      },
      loading: () => const CircularProgressIndicator(),
      error: (error, stack) => Text('An error occurred: $error'),
    );
  }

  Future<void> _onMapCreated(GoogleMapController mapController) async {
    widget.controller.complete(mapController);
    final chargerSpotsNotifire = ref.read(chargerSpotsAsyncProvider.notifier);
    // FIXME: 遅延を入れないと現在表示領域が地図全体(LatLng(-90.0, -180.0)みたいに)なってしまう
    // もっとロバストな方法を考える
    await Future.delayed(Duration(seconds: 1));
    final LatLngBounds visibleRegion = await mapController.getVisibleRegion();
    inspect(visibleRegion);
    final LatLng southwest = visibleRegion.southwest;
    final LatLng northeast = visibleRegion.northeast;
    // await chargerSpotsNotifire.serchChargerSpots(
    //   swLat: southwest.latitude.toString(),
    //   swLng: southwest.longitude.toString(),
    //   neLat: northeast.latitude.toString(),
    //   neLng: northeast.longitude.toString(),
    // );
  }

  Set<Marker> _markers(List<ChargerSpot> chargerSpots) {
    final markers = <Marker>{};
    // return markers;
    for (var chargerSpot in chargerSpots) {
      // LatLngではdoubleが引数なので変換する
      final lat = chargerSpot.latitude.toDouble();
      final lng = chargerSpot.longitude.toDouble();
      markers.add(Marker(
        markerId: MarkerId(chargerSpot.uuid),
        position: LatLng(lat, lng),
        onTap: () => _onTap(chargerSpot.uuid),
        // TODO: アイコン画像作る
        // icon:
      ));
    }
    // print(markers);
    return markers;
  }

  _onTap(String uuid) {
    // TODO: 検索する
    // StateNotifireとかでやってあげればいいかな
    print(uuid);
  }
}
