import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_challenge1_yuta_ktd/provider/page_controller_provider.dart';
import 'package:flutter_challenge1_yuta_ktd/provider/show_card_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../../../core/location/location_provider.dart';
import '../../../../provider/charger_spots_async_provider.dart';
import '../../../../provider/icon_card_connect_provider.dart';
import '../../../../provider/map_controller_completer_provider.dart';
import 'marker_manager.dart';

/// GoogleMap
class ChargerMap extends ConsumerStatefulWidget {
  const ChargerMap({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ChargerMapState();
}

class _ChargerMapState extends ConsumerState<ChargerMap> {
  @override
  Widget build(BuildContext context) {
    final chargerSpotsProvider = ref.watch(chargerSpotsAsyncProvider);
    final pageController = ref.watch(pageControllerProvider);
    final iconCardConnection = ref.watch(iconCardConnectProvider);
    final Completer<GoogleMapController> mapControllerCompleter =
        ref.read(mapControllerCompleterProvider);
    final showCardNotifire = ref.read(showCardProvider.notifier);
    final markerManager = MarkerManager(
      pageController: pageController,
      iconCardConnection: iconCardConnection,
      mapControllerCompleter: mapControllerCompleter,
      showCardNotifire: showCardNotifire,
    );

    // TODO: Zoomについては実機検証必要
    final locationAsyncValue = ref.watch(locationProvider);
    return locationAsyncValue.when(
      data: (location) {
        return GoogleMap(
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
          onTap: (_) => showCardNotifire.state = false,
          markers: chargerSpotsProvider.when(
            data: (res) {
              return markerManager.createMarkers(
                chargerSpots: res.chargerSpots,
              );
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
    final Completer<GoogleMapController> mapControllerCompleter =
        ref.watch(mapControllerCompleterProvider);

    mapControllerCompleter.complete(mapController);
    final chargerSpotsNotifire = ref.read(chargerSpotsAsyncProvider.notifier);
    // FIXME: 遅延を入れないと現在表示領域が地図全体(LatLng(-90.0, -180.0))なってしまう
    // もっとロバストな方法を考える
    await Future.delayed(const Duration(seconds: 1));
    final LatLngBounds visibleRegion = await mapController.getVisibleRegion();
    inspect(visibleRegion);
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
