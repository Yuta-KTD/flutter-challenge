import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_challenge1_yuta_ktd/constant/decolation_style.dart';
import 'package:flutter_challenge1_yuta_ktd/view/charger_spots/component/charger_spots_info_card.dart';
import 'package:flutter_challenge1_yuta_ktd/view_model/charger_spots_view_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../core/location/location_provider.dart';

// TODO: GoogleMapを呼び出したいフェーズに移ったら削除

class ChargerSpotScreen extends ConsumerStatefulWidget {
  const ChargerSpotScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      ChargerSpotScreenState();
}

class ChargerSpotScreenState extends ConsumerState<ChargerSpotScreen> {
  final Completer<GoogleMapController> _controller = Completer();
  final Duration showCardDuration = const Duration(milliseconds: 400);
  Position? position;
  // カードをせり出すかどうか
  bool showCard = false;

  @override
  Widget build(BuildContext context) {
    final chargerSpotsAsyncProvider = ref.watch(chargerSpotsFutureProvider);
    // Widgetが初めてビルドされた後に呼び出す
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await _moveCamera();
    });
    return Scaffold(
      body: Stack(
        children: [
          GoogleMap(
            onTap: (_) {
              if (!showCard) return;
              setState(() {
                showCard = false;
              });
            },
            mapType: MapType.normal,
            myLocationEnabled: true,
            initialCameraPosition: CameraPosition(
              target: LatLng(
                //positionが取得できない場合は初期座標を東京付近に設定する
                position?.latitude ?? 36,
                position?.longitude ?? 140,
              ),
              zoom: 16,
            ),
            onMapCreated: _onMapCreated,
            myLocationButtonEnabled: false,
          ),
          AnimatedPositioned(
            duration: showCardDuration,
            bottom: showCard ? 320.0 : 150.0,
            right: 16.0,
            child: SizedBox(
              width: 62.0,
              height: 62.0,
              child: FloatingActionButton(
                onPressed: () => _moveCamera(),
                backgroundColor: textColor,
                child: const Icon(Icons.gps_fixed),
              ),
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
                onTap: () {
                  if (showCard) return;
                  setState(() {
                    showCard = true;
                  });
                },
                child: chargerSpotsAsyncProvider.when(
                  data: (res) => ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: res.chargerSpots.length,
                      itemBuilder: (_, index) {
                        final data = res.chargerSpots[index];
                        return ChargerSpotsInfoCard(chargerSpot: data);
                      }),
                  error: (error, _) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text(error.toString())),
                    );
                    return _errorLoading(const Text('通信エラーです'));
                  },
                  loading: () =>
                      _errorLoading(const CircularProgressIndicator()),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  // 位置データを取得し、カメラを移動させる
  Future<void> _moveCamera() async {
    position = await ref.refresh(locationProvider.future);
    final mapController = await _controller.future;
    final latitude = position?.latitude;
    final longitude = position?.longitude;
    if (latitude == null || longitude == null) {
      return;
    }
    await mapController.moveCamera(
      CameraUpdate.newCameraPosition(
        CameraPosition(
          target: LatLng(latitude, longitude),
          zoom: 13,
        ),
      ),
    );
  }

  Future<void> _onMapCreated(GoogleMapController controller) async {
    _controller.complete(controller);
  }

  Widget _errorLoading(Widget child) {
    return Align(
      alignment: Alignment.topCenter,
      child: child,
    );
  }
}
