import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../../../constant/const_text.dart';
import '../../../../core/location/location_provider.dart';
import '../../../../provider/charger_spots_async_provider.dart';
import '../../../../provider/map_controller_completer_provider.dart';
import '../../../../provider/map_marker_async_provider.dart';
import '../../../../provider/show_card_provider.dart';
import '../../../../provider/show_search_button_provider.dart';

/// GoogleMap
class ChargerMap extends ConsumerStatefulWidget {
  const ChargerMap({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ChargerMapState();
}

class _ChargerMapState extends ConsumerState<ChargerMap> {
  @override
  Widget build(BuildContext context) {
    final Completer<GoogleMapController> mapControllerCompleter =
        ref.watch(mapControllerCompleterProvider);
    final markersAsyncValue = ref.watch(mapMarkerAsyncProvider);
    final locationAsyncValue = ref.watch(locationProvider);
    final chargerSpotAsyncValue = ref.watch(chargerSpotsAsyncProvider);
    return locationAsyncValue.when(
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (error, _) {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text(locationError)),
          );
        });
        return const Text(locationError);
      },
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
          onMapCreated: (mapController) =>
              _onMapCreated(mapController, mapControllerCompleter),
          myLocationButtonEnabled: false,
          onTap: (_) {
            final showCardNotifire = ref.watch(showCardProvider.notifier);
            showCardNotifire.state = false;
          },
          onCameraMoveStarted: () {
            final showSearchButtonNotifire =
                ref.read(showSearchButtonProvider.notifier);
            showSearchButtonNotifire.state = true;
          },
          markers: markersAsyncValue.when(
            loading: () => <Marker>{},
            error: (error, _) {
              // スポット検索エラーの場合はマーカー表示も必然的にエラーになるので表示しない
              if (!chargerSpotAsyncValue.hasError) {
                WidgetsBinding.instance.addPostFrameCallback((_) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                        content: Text('スポットのマーカ生成中にエラーが発生しました。\n再検索してください。')),
                  );
                });
              }
              return <Marker>{};
            },
            data: (res) => res,
          ),
        );
      },
    );
  }

  Future<void> _onMapCreated(GoogleMapController mapController,
      Completer<GoogleMapController> mapControllerCompleter) async {
    mapControllerCompleter.complete(mapController);
    final chargerSpotsNotifire = ref.read(chargerSpotsAsyncProvider.notifier);
    // FIXME: 遅延を入れないと現在表示領域が地図全体(LatLng(-90.0, -180.0))なってしまう
    // もっとロバストな方法を考える
    await Future.delayed(const Duration(seconds: 1));
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
