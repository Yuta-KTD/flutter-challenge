import 'package:flutter_challenge1_yuta_ktd/repository/charger_spots_repository_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:openapi/model/response.dart' as charger_spot_res;

import '../model/charger_spots_request.dart';

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
