import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'package:openapi/model/response.dart' as charger_spot_res;

import '../model/charger_spots_request.dart';
import '../repository/charger_spots_repository_provider.dart';
import 'map_controller_completer_provider.dart';
import 'page_controller_provider.dart';
import 'show_card_provider.dart';

class ChargerSpotsAsyncNotifire
    extends AutoDisposeAsyncNotifier<charger_spot_res.Response> {
  // 初期表示用の取得メソッド
  // build()内で呼ばれるメソッドは、内部的にAsyncValue .guardで実装されている
  Future<charger_spot_res.Response> _serchChargerSpots() async {
    final mapControllerCompleter = ref.watch(mapControllerCompleterProvider);
    final mapController = await mapControllerCompleter.future;
    await Future.delayed(const Duration(seconds: 1));
    final LatLngBounds visibleRegion = await mapController.getVisibleRegion();
    final LatLng southwest = visibleRegion.southwest;
    final LatLng northeast = visibleRegion.northeast;
    final reqestParam = ChargerSpotsRequest(
      swLat: southwest.latitude.toString(),
      swLng: southwest.longitude.toString(),
      neLat: northeast.latitude.toString(),
      neLng: northeast.longitude.toString(),
    );
    final repository = ref.read(chargerSpotsRepositoryProvider);

    return await repository.fetchChargerSpots(reqestParam);
  }

  @override
  FutureOr<charger_spot_res.Response> build() {
    return _serchChargerSpots();
  }

  /// パラメーターからスポット検索を行う
  // FIXME: パラメーターによってメソッド分けるべき？
  Future<void> serchChargerSpots(
      {String? swLat,
      String? swLng,
      String? neLat,
      String? neLng,
      String? uuid,
      String? fields}) async {
    final current = state;
    // TODO: requestParamのバリデーション
    state = const AsyncValue<charger_spot_res.Response>.loading()
        .copyWithPrevious(current);
    final reqestParam = ChargerSpotsRequest(
      swLat: swLat,
      swLng: swLng,
      neLat: neLat,
      neLng: neLng,
      uuid: uuid,
      fields: fields,
    );
    // 検索時はカードはひっこめる
    final showCardNotifire = ref.watch(showCardProvider.notifier);
    showCardNotifire.state = false;
    final repository = ref.read(chargerSpotsRepositoryProvider);
    state = await AsyncValue.guard(() async {
      return await repository.fetchChargerSpots(reqestParam);
    });
    final pageViewController = ref.read(pageControllerProvider);
    pageViewController.initialPage;
  }
}

/// スポット検索をリクエスト
final chargerSpotsAsyncProvider = AsyncNotifierProvider.autoDispose<
    ChargerSpotsAsyncNotifire, charger_spot_res.Response>(() {
  return ChargerSpotsAsyncNotifire();
});
