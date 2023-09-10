import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../../constant/decolation_style.dart';
import '../../../provider/charger_spots_async_provider.dart';
import '../../../provider/map_controller_completer_provider.dart';
import '../../../provider/show_search_button_provider.dart';

/// 表示エリアでの検索ボタン
class SearchCurrentAreaButton extends ConsumerWidget {
  const SearchCurrentAreaButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final showSearchButtonNotifire = ref.watch(showSearchButtonProvider);
    final mapControllerCompleter = ref.watch(mapControllerCompleterProvider);
    return !showSearchButtonNotifire
        ? const SizedBox.shrink()
        : Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              decoration: BoxDecoration(
                color: serchBoxBackgroundColor,
                borderRadius: BorderRadius.circular(34.0),
                boxShadow: const [
                  BoxShadow(
                    color: Color(0x26000000),
                    blurRadius: 29,
                    offset: Offset(0, 5),
                  ),
                ],
              ),
              child: ElevatedButton(
                onPressed: () => _onPressed(ref, mapControllerCompleter),
                style: ElevatedButton.styleFrom(
                  backgroundColor: serchBoxBackgroundColor,
                  // disabledBackgroundColor: serchBoxBackgroundColor,
                  elevation: 0,
                  minimumSize: const Size(double.infinity, 62),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(34.0),
                    side: BorderSide.none, // 枠線をなくす
                  ),
                  padding: const EdgeInsets.all(16.24),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 27 - 16.24),
                      child: Text(
                        'このエリアでスポットを検索',
                        style: TextStyle(
                          color: serchBoxContentColor,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    Icon(
                      Icons.search,
                      color: serchBoxContentColor,
                    ),
                  ],
                ),
              ),
            ),
          );
  }

  Future<void> _onPressed(WidgetRef ref,
      Completer<GoogleMapController> mapControllerCompleter) async {
    final chargerSpotsNotifire = ref.read(chargerSpotsAsyncProvider.notifier);
    final mapController = await mapControllerCompleter.future;
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
