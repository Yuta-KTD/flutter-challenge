import 'dart:async';

import 'package:flutter/material.dart';

import 'package:flutter_challenge1_yuta_ktd/constant/decolation_style.dart';
import 'package:flutter_challenge1_yuta_ktd/datastore/charger_spots_datastore_provider.dart';
import 'package:flutter_challenge1_yuta_ktd/provider/charger_spots_async_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../core/location/location_provider.dart';
import 'component/card/charger_spots_info_card.dart';
import 'component/map/charger_map.dart';
import 'component/map/current_location_button.dart';

// TODO: GoogleMapを呼び出したいフェーズに移ったら削除

class ChargerSpotScreen extends ConsumerStatefulWidget {
  const ChargerSpotScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      ChargerSpotScreenState();
}

class ChargerSpotScreenState extends ConsumerState<ChargerSpotScreen> {
  final Completer<GoogleMapController> controller = Completer();
  final Duration showCardDuration = const Duration(milliseconds: 400);
  Position? position;
  // カードをせり出すかどうか
  bool showCard = false;

  @override
  Widget build(BuildContext context) {
    // TODO: statusでngの時にダイアログ出す
    final asyncChargerSpots = ref.watch(chargerSpotsAsyncProvider);
    return Scaffold(
      body: Stack(
        children: [
          ChargerMap(
            onTap: _onMapTap,
            position: position,
            controller: controller,

            // onMapCreated: _onMapCreated,
          ),
          AnimatedPositioned(
            duration: showCardDuration,
            bottom: showCard ? 320.0 : 150.0,
            right: 16.0,
            child: SizedBox(
              width: 62.0,
              height: 62.0,
              child: CurrentLocationButton(
                controller: controller,
              ),
            ),
          ),
          AnimatedPositioned(
            duration: showCardDuration,
            left: 0,
            right: 0,
            bottom: showCard ? 40 : -130.0,
            child: SizedBox(
              height: 272.0,
              child: GestureDetector(
                onTap: () {
                  if (showCard) return;
                  setState(() {
                    showCard = true;
                  });
                },
                child: asyncChargerSpots.when(
                  data: (res) => ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: res.chargerSpots.length,
                      itemBuilder: (_, index) {
                        final data = res.chargerSpots[index];
                        return ChargerSpotsInfoCard(chargerSpot: data);
                      }),
                  error: (error, _) {
                    // ScaffoldMessenger.of(context).showSnackBar(
                    //   SnackBar(content: Text(error.toString())),
                    // );
                    return _errorLoading(const Text('通信エラーです'));
                  },
                  loading: () =>
                      _errorLoading(const CircularProgressIndicator()),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _onMapTap() {
    if (!showCard) return;
    setState(() {
      showCard = false;
    });
  }

  Widget _errorLoading(Widget child) {
    return Align(
      alignment: Alignment.topCenter,
      child: child,
    );
  }
}
