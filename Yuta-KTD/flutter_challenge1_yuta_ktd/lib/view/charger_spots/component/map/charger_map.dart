import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

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
        zoom: 16,
      ),
      onMapCreated: onMapCreated,
      myLocationButtonEnabled: false,
    );
  }
}
