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
    canvas.drawColor(Colors.red, BlendMode.src);
    final codec = await ui.instantiateImageCodec(Uint8List.fromList(imgList),
        targetWidth: 45, targetHeight: 64);
    final frame = await codec.getNextFrame();
    final img = frame.image;
    // final img = await decodeImageFromList(Uint8List.fromList(imgList));
    final imgWidth = img.width.toDouble();
    final imgHight = img.height.toDouble();
    // print(imgHight);
    // print(imgWidth);
    // canvas.translate(imgWidth / 2, imgHight / 2);

    canvas.drawImage(img, const Offset(0, 0), paint);
    // canvas.drawImageRect(img, src, dst, paint);

    final chargerCountString = chargerCount.toString();

    // final textSpan = TextSpan(
    //   style: const TextStyle(
    //     color: textColor,
    //     fontSize: 16,
    //     fontWeight: FontWeight.bold,
    //   ),
    //   text: chargerCountString,
    // );

    // final textPainter = TextPainter(
    //   text: textSpan,
    //   textAlign: TextAlign.center,
    //   textDirection: TextDirection.ltr,
    // );

    // textPainter.layout();
    // // 画像の中心座標を計算
    // final imgCenterX = img.width / 2;
    // final imgCenterY = img.height / 2;
    // // テキストの中心座標を計算
    // final textCenterX = textPainter.width;
    // final textCenterY = textPainter.height / 2;

    // // テキストが画像の中心に配置されるようにオフセットを計算
    // // NOTE: 横軸座標調整のための切り上げと加算
    // // TODO: もう少しいい計算方法ないか考える
    // final offsetX = (imgCenterX - textCenterX).ceil().toDouble() + 1;
    // final offsetY = (imgCenterY - textCenterY);

    // textPainter.paint(canvas, Offset(0, 0));
    final picture = recorder.endRecording();
    final image = await picture.toImage(45, 64);
    final imageByte = await image.toByteData(format: ui.ImageByteFormat.png);
    return imageByte!.buffer.asUint8List();
  }
}
