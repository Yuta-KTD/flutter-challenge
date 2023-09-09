import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:openapi/model/response.dart' as charger_spot_res;

import '../../../../provider/charger_spots_async_provider.dart';
import 'charger_spots_info_card.dart';

class CardList extends ConsumerWidget {
  const CardList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncChargerSpots = ref.watch(chargerSpotsAsyncProvider);
    final PageController controller = PageController();

    return asyncChargerSpots.when(
      data: (res) => PageView.builder(
        controller: controller,
        itemCount: res.chargerSpots.length,
        itemBuilder: (_, index) {
          final data = res.chargerSpots[index];
          return ChargerSpotsInfoCard(chargerSpot: data);
        },
        onPageChanged: (value) async {
          await _onPageChanged(value, res, ref);
        },
      ),
      error: (error, _) {
        // ScaffoldMessenger.of(context).showSnackBar(
        //   SnackBar(content: Text(error.toString())),
        // );
        return _errorLoading(const Text('通信エラーです'));
      },
      loading: () => _errorLoading(
        const CircularProgressIndicator(),
      ),
    );
  }

  Future<void> _onPageChanged(
      int value, charger_spot_res.Response res, WidgetRef ref) async {
    final asyncChargerSpotsNotifire =
        ref.read(chargerSpotsAsyncProvider.notifier);
    // カードのUUIDを元に検索
    await asyncChargerSpotsNotifire.serchChargerSpots(
        uuid: res.chargerSpots[value].uuid);
  }

  Widget _errorLoading(Widget child) {
    return Align(
      alignment: Alignment.topCenter,
      child: child,
    );
  }
}
