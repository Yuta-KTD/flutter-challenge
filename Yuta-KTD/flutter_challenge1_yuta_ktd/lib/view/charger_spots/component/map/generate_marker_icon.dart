import 'dart:ui' as ui;
import 'dart:io';
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_challenge1_yuta_ktd/gen/assets.gen.dart';

import '../../../../constant/decolation_style.dart';

class CustomIconWithNumber {
  CustomIconWithNumber();

  Future<Uint8List> generateImage(int number) async {
    final recorder = ui.PictureRecorder();
    final canvas = Canvas(recorder);
    final paint = Paint()..isAntiAlias = true;

    final String imgPath = Assets.pin.path;
    final rawData = await rootBundle.load(imgPath);
    final imgList = Uint8List.view(rawData.buffer);
    print(imgList);
    final img = await decodeImageFromList(Uint8List.fromList(imgList));

    // FIXME: 画像小さすぎる
    canvas.drawImage(img, const Offset(0, 0), paint);

    // FIXME: 数字を入れると画像が見えなくなる
    // final span = TextSpan(
    //   style: const TextStyle(
    //     color: textColor,
    //     fontSize: 4,
    //   ),
    //   text: number.toString(),
    // );

    // final textPainter = TextPainter(
    //   text: span,
    //   textAlign: TextAlign.left,
    //   textDirection: TextDirection.ltr,
    // );

    // textPainter.layout();
    // textPainter.paint(canvas, const Offset(16, 26));

    try {
      final picture = recorder.endRecording();
      final image = await picture.toImage(img.width, img.height);
      final imageByte = await image.toByteData(format: ui.ImageByteFormat.png);
      return imageByte!.buffer.asUint8List();
    } catch (e) {
      print('errro!!!!: ${e.toString()}');
      final picture = recorder.endRecording();
      final image = await picture.toImage(img.width, img.height);
      final imageByte = await image.toByteData(format: ui.ImageByteFormat.png);
      return imageByte!.buffer.asUint8List();
    }
  }
}
