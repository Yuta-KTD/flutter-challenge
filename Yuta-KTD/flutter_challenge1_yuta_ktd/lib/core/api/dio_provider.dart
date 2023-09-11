import 'package:dio/dio.dart';
import 'package:flutter_challenge1_yuta_ktd/constant/constant.dart';
import 'package:flutter_config/flutter_config.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// API接続管理用
final dioProvider = Provider.autoDispose(
  // TODO: dart-define-fileとかで環境分けする
  (ref) => Dio(
    BaseOptions(
      headers: {
        'X-EVENE-NATIVE-API-TOKEN': FlutterConfig.get('EVENE_API_KEY'),
      },
      baseUrl: Constant.baseStgUrl,
      contentType: 'application/json',
    ),
  ),
);
