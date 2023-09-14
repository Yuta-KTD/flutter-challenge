import 'dart:ui' as ui;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_challenge1_yuta_ktd/gen/assets.gen.dart';

import '../../../../constant/decolation_style.dart';

class CustomIconWithNumber {
  CustomIconWithNumber();

  Future<Uint8List> generateImage(int chargerCount) async {
    final recorder = ui.PictureRecorder();
    final canvas = Canvas(recorder);
    final paint = Paint();

    final String imgPath = Assets.image.pin.path;
    final rawData = await rootBundle.load(imgPath);
    final imgList = Uint8List.view(rawData.buffer);
    // Canvasに入力する画像の大きさを指定
    final codec = await ui.instantiateImageCodec(Uint8List.fromList(imgList),
        targetWidth: 90, targetHeight: 128);
    final frame = await codec.getNextFrame();
    final img = frame.image;

    // 画像の影を計算して配置する
    canvas.drawImage(img, const Offset(4, 4), paint);

    final chargerCountString = chargerCount.toString();

    final textSpan = TextSpan(
      style: const TextStyle(
        color: textColor,
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
      text: chargerCountString,
    );

    final textPainter = TextPainter(
      text: textSpan,
      textDirection: TextDirection.ltr,
    );

    textPainter.layout();
    // 画像の中心座標を計算
    final imgCenterX = img.width / 2;
    // 文字の配置は画像の高さのおおよそ1/3くらいの地点
    final imgCenterY = img.height / 3;
    // テキストの中心座標を計算
    final textCenterX = textPainter.width / 2;
    final textCenterY = textPainter.height / 2;

    // テキストが画像の中心に配置されるようにオフセットを計算
    final offsetX = (imgCenterX - textCenterX);
    final offsetY = (imgCenterY - textCenterY);

    textPainter.paint(canvas, Offset(offsetX, offsetY));
    final picture = recorder.endRecording();
    // 出力時の画像の大きさを設定
    final image = await picture.toImage(90, 128);
    final imageByte = await image.toByteData(format: ui.ImageByteFormat.png);
    return imageByte!.buffer.asUint8List();
  }
}
