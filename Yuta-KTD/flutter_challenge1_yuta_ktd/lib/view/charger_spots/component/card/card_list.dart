import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_challenge1_yuta_ktd/provider/map_controller_completer_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:openapi/model/response.dart' as charger_spot_res;

import '../../../../provider/charger_spots_async_provider.dart';
import 'charger_spots_info_card.dart';

class CardList extends ConsumerWidget {
  const CardList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncChargerSpots = ref.watch(chargerSpotsAsyncProvider);
    // ここでカードの横幅指定
    final PageController controller = PageController(viewportFraction: 0.9);

    return asyncChargerSpots.when(
      data: (res) => PageView.builder(
        controller: controller,
        itemCount: res.chargerSpots.length,
        itemBuilder: (_, index) {
          final data = res.chargerSpots[index];
          return ChargerSpotsInfoCard(chargerSpot: data);
        },
        onPageChanged: (value) async {
          await _onPageChanged(value, res, ref);
        },
      ),
      error: (error, _) {
        // ScaffoldMessenger.of(context).showSnackBar(
        //   SnackBar(content: Text(error.toString())),
        // );
        return _errorLoading(const Text('通信エラーです'));
      },
      loading: () => _errorLoading(
        const CircularProgressIndicator(),
      ),
    );
  }

  Future<void> _onPageChanged(
      int value, charger_spot_res.Response res, WidgetRef ref) async {
    final Completer<GoogleMapController> mapControllerCompleter =
        ref.watch(mapControllerCompleterProvider);
    final mapController = await mapControllerCompleter.future;
    final latitude = res.chargerSpots[value].latitude.toDouble();
    final longitude = res.chargerSpots[value].longitude.toDouble();
    await mapController.moveCamera(
      CameraUpdate.newCameraPosition(
        CameraPosition(
          target: LatLng(latitude, longitude),
          zoom: 15,
        ),
      ),
    );
  }

  Widget _errorLoading(Widget child) {
    return Align(
      alignment: Alignment.topCenter,
      child: child,
    );
  }
}
