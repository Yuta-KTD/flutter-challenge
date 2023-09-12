import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:openapi/model/response.dart' as charger_spot_res;
import 'package:openapi/model/status.dart';

import '../../../../constant/const_text.dart';
import '../../../../provider/charger_spots_async_provider.dart';
import '../../../../provider/map_controller_completer_provider.dart';
import '../../../../provider/page_controller_provider.dart';
import '../../../../provider/show_card_provider.dart';
import '../../../component/basic_text.dart';
import 'charger_spots_info_card.dart';

class CardList extends ConsumerWidget {
  const CardList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncChargerSpots = ref.watch(chargerSpotsAsyncProvider);
    final PageController controller = ref.watch(pageControllerProvider);
    final Completer<GoogleMapController> mapControllerCompleter =
        ref.watch(mapControllerCompleterProvider);
    final showCardNotifire = ref.watch(showCardProvider.notifier);
    const ngLatlngsMessage = '現在位置の取得に失敗しました。\n端末・アプリの位置情報の設定を確認してから再検索してください。';
    const ngDistanceMessage = '検索範囲が広すぎます。\n範囲を狭めてから再検索してください。';

    return asyncChargerSpots.when(
        skipLoadingOnRefresh: false, // 再検索時にもローディングインジケーターを表示する
        loading: () => _errorLoading(const CircularProgressIndicator()),
        error: (error, _) {
          final message =
              '$fetchSpotsError\n下記エラーを開発者にご連絡ください\n${error.toString()}';
          WidgetsBinding.instance.addPostFrameCallback((_) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('fetchSpotsError')),
            );
          });
          return _errorLoading(_messageCard(message));
        },
        data: (res) {
          if (res.status == Status.ngLatlngsIsBlank) {
            return _errorLoading(_messageCard(ngLatlngsMessage));
          }
          if (res.status == Status.ngDistanceTooLong) {
            return _errorLoading(_messageCard(ngDistanceMessage));
          }
          return res.chargerSpots.isEmpty
              ? _errorLoading(_messageCard('このエリアにはスポットが存在しません'))
              : PageView.builder(
                  controller: controller,
                  itemCount: res.chargerSpots.length,
                  itemBuilder: (_, index) {
                    final data = res.chargerSpots[index];
                    return GestureDetector(
                      onTapDown: (_) async {
                        _onCardTapDown(showCardNotifire);
                        await _moveToCardPosition(
                            index, res, mapControllerCompleter);
                      },
                      child: ChargerSpotsInfoCard(chargerSpot: data),
                    );
                  },
                  onPageChanged: (page) async {
                    await _moveToCardPosition(
                        page, res, mapControllerCompleter);
                  },
                );
        });
  }

  void _onCardTapDown(StateController<bool> showCardNotifire) {
    final state = showCardNotifire.state;
    if (state) return;
    showCardNotifire.state = true;
  }

  Future<void> _moveToCardPosition(
    int cardIndex,
    charger_spot_res.Response res,
    Completer<GoogleMapController> mapControllerCompleter,
  ) async {
    final mapController = await mapControllerCompleter.future;
    final latitude = res.chargerSpots[cardIndex].latitude.toDouble();
    final longitude = res.chargerSpots[cardIndex].longitude.toDouble();
    await mapController.moveCamera(
      CameraUpdate.newCameraPosition(
        CameraPosition(
          target: LatLng(latitude, longitude),
          zoom: 15,
        ),
      ),
    );
  }

  Widget _errorLoading(Widget child) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Align(
        alignment: Alignment.topCenter,
        child: child,
      ),
    );
  }

  Widget _messageCard(String text) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: BasicText(text),
      ),
    );
  }
}
