import 'dart:async';

import 'package:flutter_challenge1_yuta_ktd/core/location/location_provider.dart';
import 'package:flutter_challenge1_yuta_ktd/repository/charger_spots_repository_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:openapi/model/response.dart' as charger_spot_res;

import '../model/charger_spots_request.dart';
import '../repository/charger_spots_repository_interface.dart';

class ChargerSpotsAsyncNotifire
    extends AsyncNotifier<charger_spot_res.Response> {
  ChargerSpotsRepositoryInterface get repository =>
      ref.read(chargerSpotsRepositoryProvider);

  // build()内部ではAsyncValue.guardが実装されているので、別でbuild専用のプライベートメソッドを用意
  Future<charger_spot_res.Response> _buildSerchChagerSpots(
      ChargerSpotsRequest reqestParam) async {
    final response = await repository.fetchChargerSpots(reqestParam);
    return response;
  }

  @override
  FutureOr<charger_spot_res.Response> build(
      {String? swLat, String? swLng, String? neLat, String? neLng}) async {
    final reqestParam = ChargerSpotsRequest(
        swLat: swLat, swLng: swLng, neLat: neLat, neLng: neLng);
    return await _buildSerchChagerSpots(reqestParam);
  }

  /// パラメーターからスポット検索を行う
  Future<void> serchChargerSpots(ChargerSpotsRequest reqestParam) async {
    // TODO: requestParamのバリデーション
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      return await repository.fetchChargerSpots(reqestParam);
    });
  }
}

/// スポット検索をリクエスト
final chargerSpotsAsyncProvider =
    AsyncNotifierProvider<ChargerSpotsAsyncNotifire, charger_spot_res.Response>(
        () {
  return ChargerSpotsAsyncNotifire();
});

final chargerSpotsFutureProvider =
    FutureProvider.autoDispose<charger_spot_res.Response>((ref) async {
  final repostory = ref.read(chargerSpotsRepositoryProvider);
  // TODO: paramにstateNotifireProviderを渡してあげる
  // TODO: 仮置きの値↑の対応完了したら削除
  const param = ChargerSpotsRequest(
    swLat: '35.683331703634124',
    swLng: '139.7657155055581',
    neLat: '35.686849507072736',
    neLng: '139.77340835691592',
  );
  return repostory.fetchChargerSpots(param);
});
