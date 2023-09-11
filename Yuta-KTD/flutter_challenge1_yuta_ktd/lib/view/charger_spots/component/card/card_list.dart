import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_challenge1_yuta_ktd/provider/map_controller_completer_provider.dart';
import 'package:flutter_challenge1_yuta_ktd/provider/page_controller_provider.dart';
import 'package:flutter_challenge1_yuta_ktd/provider/show_card_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:openapi/model/response.dart' as charger_spot_res;

import '../../../../constant/const_text.dart';
import '../../../../provider/charger_spots_async_provider.dart';
import 'charger_spots_info_card.dart';

class CardList extends ConsumerWidget {
  const CardList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncChargerSpots = ref.watch(chargerSpotsAsyncProvider);
    final PageController controller = ref.watch(pageControllerProvider);
    final Completer<GoogleMapController> mapControllerCompleter =
        ref.watch(mapControllerCompleterProvider);
    final showCardNotifire = ref.watch(showCardProvider.notifier);

    return asyncChargerSpots.when(
      skipLoadingOnRefresh: false, // 再検索時にもローディングインジケーターを表示する
      loading: () => _errorLoading(
        const CircularProgressIndicator(),
      ),
      error: (error, _) {
        final message =
            '$fetchSpotsError\n下記エラーを開発者にご連絡ください\n${error.toString()}';
        WidgetsBinding.instance.addPostFrameCallback((_) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('fetchSpotsError')),
          );
        });
        return _errorLoading(Card(child: Text(message)));
      },
      data: (res) => PageView.builder(
        controller: controller,
        itemCount: res.chargerSpots.length,
        itemBuilder: (_, index) {
          final data = res.chargerSpots[index];
          return GestureDetector(
            onTapDown: (_) => _onCardTapDown(showCardNotifire),
            child: ChargerSpotsInfoCard(chargerSpot: data),
          );
        },
        onPageChanged: (value) async {
          await _onPageChanged(value, res, mapControllerCompleter);
        },
      ),
    );
  }

  void _onCardTapDown(StateController<bool> showCardNotifire) {
    final state = showCardNotifire.state;
    if (state) return;
    showCardNotifire.state = true;
  }

  Future<void> _onPageChanged(
    int value,
    charger_spot_res.Response res,
    Completer<GoogleMapController> mapControllerCompleter,
  ) async {
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
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Align(
        alignment: Alignment.topCenter,
        child: child,
      ),
    );
  }
}
