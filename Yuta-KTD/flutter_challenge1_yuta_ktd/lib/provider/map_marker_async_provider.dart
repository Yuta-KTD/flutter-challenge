import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../view/charger_spots/component/map/marker_manager.dart';
import 'charger_spots_async_provider.dart';
import 'icon_card_connect_provider.dart';
import 'map_controller_completer_provider.dart';
import 'page_controller_provider.dart';
import 'show_card_provider.dart';

/// マップマーカーを作成する
final mapMarkerAsyncProvider =
    FutureProvider.autoDispose<Set<Marker>>((ref) async {
  final pageController = ref.watch(pageControllerProvider);
  final iconCardConnection = ref.watch(iconCardConnectProvider);
  final Completer<GoogleMapController> mapControllerCompleter =
      ref.watch(mapControllerCompleterProvider);
  final showCardNotifire = ref.read(showCardProvider.notifier);
  // NOTE: FutureProviderをそのまま返す方が自然なため、whenDataはつかわない
  // 参考: https://zenn.dev/tsuruo/articles/52f62fc78df6d5#whendata
  final chargerSpotsRes = await ref.watch(chargerSpotsAsyncProvider.future);
  final markerManager = MarkerManager(
    pageController: pageController,
    iconCardConnection: iconCardConnection,
    mapControllerCompleter: mapControllerCompleter,
    showCardNotifire: showCardNotifire,
  );
  final markers = await markerManager.createMarkers(
      chargerSpots: chargerSpotsRes.chargerSpots);
  return markers;
});
