import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:geolocator/geolocator.dart';

final locationProvider = FutureProvider<Position?>((ref) async {
  bool serviceEnabled;
  LocationPermission permission;

  // 位置情報サービスが有効かどうか
  // TODO: permission_handlerで端末の位置情報権限の有効化を促す
  serviceEnabled = await Geolocator.isLocationServiceEnabled();
  if (!serviceEnabled) {
    return null;
  }

  //位置情報サービスのパーミッションチェック
  permission = await Geolocator.checkPermission();
  if (permission == LocationPermission.denied) {
    //位置情報にアクセスするための許可を促す
    permission = await Geolocator.requestPermission();
    if (permission == LocationPermission.denied) {
      return null;
    }
  }

  //拒否されている場合ここでエラーになる
  if (permission == LocationPermission.deniedForever) {
    return null;
  }

  //許可された場合、位置情報を返す
  return await Geolocator.getCurrentPosition();
});
