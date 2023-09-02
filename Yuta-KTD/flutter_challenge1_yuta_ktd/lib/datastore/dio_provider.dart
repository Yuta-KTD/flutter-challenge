import 'package:dio/dio.dart';
import 'package:flutter_challenge1_yuta_ktd/constant/constant.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final dioProvider = Provider.autoDispose(
  // TODO: dart-define-fileとかで環境分けする
  (ref) => Dio(
    BaseOptions(
      baseUrl: Constant.baseStgUrl,
      contentType: 'application/json',
    ),
  ),
);
