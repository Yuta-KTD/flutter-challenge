/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsImageGen {
  const $AssetsImageGen();

  /// File path: assets/image/Vector.png
  AssetGenImage get vector => const AssetGenImage('assets/image/Vector.png');

  /// File path: assets/image/bolt.png
  AssetGenImage get bolt => const AssetGenImage('assets/image/bolt.png');

  /// File path: assets/image/cardWhenNoImages.png
  AssetGenImage get cardWhenNoImages =>
      const AssetGenImage('assets/image/cardWhenNoImages.png');

  /// File path: assets/image/pin.png
  AssetGenImage get pin => const AssetGenImage('assets/image/pin.png');

  /// File path: assets/image/power.png
  AssetGenImage get power => const AssetGenImage('assets/image/power.png');

  /// File path: assets/image/today.png
  AssetGenImage get today => const AssetGenImage('assets/image/today.png');

  /// File path: assets/image/watchLator.png
  AssetGenImage get watchLator =>
      const AssetGenImage('assets/image/watchLator.png');

  /// List of all assets
  List<AssetGenImage> get values =>
      [vector, bolt, cardWhenNoImages, pin, power, today, watchLator];
}

class Assets {
  Assets._();

  static const $AssetsImageGen image = $AssetsImageGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
