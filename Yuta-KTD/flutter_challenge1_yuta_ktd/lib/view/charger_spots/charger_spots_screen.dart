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

class MyHomePage extends ConsumerStatefulWidget {
  const MyHomePage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _MyHomePageState();
}

class _MyHomePageState extends ConsumerState<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final chargerSpotsAsyncProvider = ref.watch(chargerSpotsFutureProvider);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('test'),
      ),
      body: Stack(
        children: [
          // TODO: GoogleMapを配置する
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: SizedBox(
              height: 272.0,
              child: chargerSpotsAsyncProvider.when(
                data: (res) => ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: res.chargerSpots.length,
                    itemBuilder: (_, index) {
                      final data = res.chargerSpots[index];
                      return ChargerSpotsInfoCard(chargerSpot: data);
                    }),
                error: (error, _) => const Center(child: Text('通信エラー')),
                loading: () => const Center(child: CircularProgressIndicator()),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// FIXME: これはサンプル
class MapSample extends ConsumerStatefulWidget {
  const MapSample({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => MapSampleState();
}

class MapSampleState extends ConsumerState<MapSample> {
  final Completer<GoogleMapController> _controller = Completer();
  Position? position;

  @override
  Widget build(BuildContext context) {
    final chargerSpotsAsyncProvider = ref.watch(chargerSpotsFutureProvider);
    // Widgetが初めてビルドされた後にこのメソッドを呼び出す
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await _moveCamera();
    });
    return Scaffold(
      body: Stack(
        children: [
          GoogleMap(
            mapType: MapType.normal,
            myLocationEnabled: true,
            initialCameraPosition: CameraPosition(
              target: LatLng(
                //positionがnullなら初期座標を東京付近に設定する
                position?.latitude ?? 36,
                position?.longitude ?? 140,
              ),
              zoom: 16,
            ),
            onMapCreated: _onMapCreated,
            myLocationButtonEnabled: false,
          ),
          Positioned(
            bottom: 400,
            right: 20,
            child: FloatingActionButton(
              onPressed: () => _moveCamera(),
              backgroundColor: textColor,
              child: const Icon(Icons.gps_fixed),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: SizedBox(
              height: 272.0,
              child: chargerSpotsAsyncProvider.when(
                data: (res) => ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: res.chargerSpots.length,
                    itemBuilder: (_, index) {
                      final data = res.chargerSpots[index];
                      return ChargerSpotsInfoCard(chargerSpot: data);
                    }),
                error: (error, _) => const Center(child: Text('通信エラー')),
                loading: () => const Center(child: CircularProgressIndicator()),
              ),
            ),
          ),
        ],
      ),
    );
  }

  // 位置データを取得し、カメラを移動させるメソッド
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

  // Future<void> _goToTheLake() async {
  //   final GoogleMapController controller = await _controller.future;
  //   controller.animateCamera(CameraUpdate.newCameraPosition(_kLake));
  // }
}
