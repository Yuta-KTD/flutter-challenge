import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:openapi/models.dart';

import '../../../../view_model/charger_spots_view_model.dart';

/// GoogleMap
class ChargerMap extends ConsumerWidget {
  final VoidCallback? onTap;
  final void Function(GoogleMapController)? onMapCreated;
  final Position? position;
  const ChargerMap({
    super.key,
    this.onTap,
    this.onMapCreated,
    this.position,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final chargerSpotsAsyncProvider = ref.watch(chargerSpotsFutureProvider);
    // TODO: Zoomについては実機検証必要（そもそもズームさせる必要ある？）
    return GoogleMap(
      onTap: (_) => onTap,
      mapType: MapType.normal,
      myLocationEnabled: true,
      initialCameraPosition: CameraPosition(
        target: LatLng(
          //positionが取得できない場合は初期座標を東京付近に設定する
          position?.latitude ?? 36,
          position?.longitude ?? 140,
        ),
      ),
      onMapCreated: onMapCreated,
      myLocationButtonEnabled: false,
      markers: chargerSpotsAsyncProvider.when(
        data: (res) {
          return _markers(res.chargerSpots);
        },
        error: (error, _) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(error.toString())),
          );
          return <Marker>{};
        },
        loading: () {
          // TODO: 全面覆うローディングスクリーンだす？
          return <Marker>{};
        },
      ),
    );
  }

  Set<Marker> _markers(List<ChargerSpot> chargerSpots) {
    final markers = <Marker>{};
    // return markers;
    for (var chargerSpot in chargerSpots) {
      // LatLngではdoubleが引数なので変換する
      final lat = chargerSpot.latitude.toDouble();
      final lng = chargerSpot.longitude.toDouble();
      markers.add(Marker(
        markerId: MarkerId(chargerSpot.uuid),
        position: LatLng(lat, lng),
        onTap: () => _onTap(chargerSpot.uuid),
        // TODO: アイコン画像作る
        // icon:
      ));
    }
    print(markers);
    return markers;
  }

  _onTap(String uuid) {
    // TODO: 検索する
    // StateNotifireとかでやってあげればいいかな
    print(uuid);
  }
}
