import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_challenge1_yuta_ktd/app.dart';
import 'package:flutter_config/flutter_config.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized(); // Required by FlutterConfig
  await FlutterConfig.loadEnvVariables();
  //　マップアプリを使うシチュエーションを考えて画面の向きは縦固定にする
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  runApp(const ProviderScope(child: MyApp()));
}
