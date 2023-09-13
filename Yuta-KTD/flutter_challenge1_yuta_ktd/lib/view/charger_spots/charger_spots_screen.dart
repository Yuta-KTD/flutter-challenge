import 'package:flutter/material.dart';
import 'package:flutter_challenge1_yuta_ktd/provider/show_card_provider.dart';

import 'package:flutter_challenge1_yuta_ktd/view/charger_spots/component/card/card_list.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'component/map/charger_map.dart';
import 'component/map/current_location_button.dart';
import 'component/search_current_area_button.dart';

class ChargerSpotScreen extends ConsumerStatefulWidget {
  const ChargerSpotScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      ChargerSpotScreenState();
}

class ChargerSpotScreenState extends ConsumerState<ChargerSpotScreen> {
  final Duration showCardDuration = const Duration(milliseconds: 400);
  // カードをせり出すかどうか

  @override
  Widget build(BuildContext context) {
    final showCard = ref.watch(showCardProvider);
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            const ChargerMap(),
            const SearchCurrentAreaButton(),
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
              child: const SizedBox(
                height: 272.0,
                child: CardList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
