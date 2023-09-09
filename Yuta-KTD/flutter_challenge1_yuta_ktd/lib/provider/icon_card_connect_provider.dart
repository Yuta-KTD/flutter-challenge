import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'charger_spots_async_provider.dart';
import 'package:openapi/model/response.dart' as charger_spot_res;

/// cardのindexをキー、スポットのUUIDをvalueとしてもつカード切り替え用Provider
final iconCardConnectProvider =
    FutureProvider.autoDispose<Map<int, dynamic>>((ref) async {
  final charger_spot_res.Response chargerSpotsAsyncValue =
      await ref.watch(chargerSpotsAsyncProvider.future);
  final Map<int, dynamic> iconCard = chargerSpotsAsyncValue.chargerSpots
      .asMap()
      .map((index, chargerSpot) => MapEntry(index, chargerSpot.uuid));
  return iconCard;
});
