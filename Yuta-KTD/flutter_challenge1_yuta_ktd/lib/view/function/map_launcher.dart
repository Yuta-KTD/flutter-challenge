import 'dart:io';

import 'package:geolocator/geolocator.dart';
import 'package:url_launcher/url_launcher_string.dart';

class MapLauncher {
  static final MapLauncher _instance = MapLauncher._internal();
  static const _iosMapUrl = 'maps://maps.apple.com/';
  static const _iosGoogleMapUrl = 'comgooglemaps://';
  static const _googleMapUrl = 'https://maps.google.com/maps';
  factory MapLauncher() {
    return _instance;
  }
  MapLauncher._internal();

  void openFromToMap(
      {required Position fromPosition,
      required num toLat,
      required num toLng}) async {
    final saddr = 'saddr=${fromPosition.latitude},${fromPosition.longitude}';
    final daddr = 'daddr=$toLat,$toLng';
    final url = '${await switchMapUrl()}?$saddr&$daddr&dirflg=d';
    await _launchUrl(url);
  }

  // iOSでGoogleMapが立ち上げられる場合はGoogleMapを使用する
  // iOSユーザーもGoogleMapを使う人が多いとのこと
  // FIXME: ユーザーが使用するマップアプリを選択できるようにする
  Future<String> switchMapUrl() async {
    if (Platform.isIOS) {
      if (await canLaunchUrlString(_iosGoogleMapUrl)) {
        return _iosGoogleMapUrl;
      } else {
        return _iosMapUrl;
      }
    } else if (Platform.isAndroid) {
      return _googleMapUrl;
    } else {
      throw Exception(Platform.operatingSystem);
    }
  }

  Future<void> _launchUrl(String url) async {
    if (!await canLaunchUrlString(url)) return;
    launchUrlString(url, mode: LaunchMode.externalApplication);
  }
}
