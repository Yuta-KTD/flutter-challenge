import 'dart:async';
import 'dart:developer';

import 'package:flutter_challenge1_yuta_ktd/repository/charger_spots_repository_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:openapi/model/response.dart' as charger_spot_res;
import 'package:openapi/model/status.dart';

import '../model/charger_spots_request.dart';

// 非同期的な初期化はいらない（今回の設計だと初期表示時に検索範囲を取得できない）のでNotifireを使う
class ChargerSpotsAsyncNotifire
    extends AutoDisposeAsyncNotifier<charger_spot_res.Response> {
  @override
  FutureOr<charger_spot_res.Response> build() {
    // FIXME: 初期値設定よくわからん
    return const charger_spot_res.Response(status: Status.ok);
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
    final repository = ref.read(chargerSpotsRepositoryProvider);
    state = await AsyncValue.guard(() async {
      return await repository.fetchChargerSpots(reqestParam);
    });
    inspect(state);
  }
}

/// スポット検索をリクエスト
final chargerSpotsAsyncProvider = AsyncNotifierProvider.autoDispose<
    ChargerSpotsAsyncNotifire, charger_spot_res.Response>(() {
  return ChargerSpotsAsyncNotifire();
});
