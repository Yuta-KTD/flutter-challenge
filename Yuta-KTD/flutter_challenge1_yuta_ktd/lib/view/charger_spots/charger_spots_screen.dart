import 'dart:async';

import 'package:flutter/material.dart';

import 'package:flutter_challenge1_yuta_ktd/view/charger_spots/component/card/card_list.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'component/map/charger_map.dart';
import 'component/map/current_location_button.dart';

class ChargerSpotScreen extends ConsumerStatefulWidget {
  const ChargerSpotScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      ChargerSpotScreenState();
}

class ChargerSpotScreenState extends ConsumerState<ChargerSpotScreen> {
  final Duration showCardDuration = const Duration(milliseconds: 400);
  Position? position;
  // カードをせり出すかどうか
  bool showCard = false;

  @override
  Widget build(BuildContext context) {
    // TODO: statusでngの時にダイアログ出す
    return Scaffold(
      body: Stack(
        children: [
          GestureDetector(
            onTapDown: (_) => _onMapTapDown(),
            child: const ChargerMap(),
          ),
          AnimatedPositioned(
            duration: showCardDuration,
            bottom: showCard ? 320.0 : 150.0,
            right: 16.0,
            child: const SizedBox(
              width: 62.0,
              height: 62.0,
              child: CurrentLocationButton(),
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
                onTapDown: (_) => _onCardTapDown(),
                child: const CardList(),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _onMapTapDown() {
    if (!showCard) return;
    setState(() {
      showCard = false;
    });
  }

  void _onCardTapDown() {
    if (showCard) return;
    setState(() {
      showCard = true;
    });
  }
}
