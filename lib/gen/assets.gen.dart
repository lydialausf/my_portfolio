/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/R.jpeg
  AssetGenImage get r => const AssetGenImage('assets/images/R.jpeg');

  /// File path: assets/images/amazon.jpeg
  AssetGenImage get amazon => const AssetGenImage('assets/images/amazon.jpeg');

  /// File path: assets/images/androidstudio.jpg
  AssetGenImage get androidstudio =>
      const AssetGenImage('assets/images/androidstudio.jpg');

  /// File path: assets/images/bear.jpg
  AssetGenImage get bear => const AssetGenImage('assets/images/bear.jpg');

  /// File path: assets/images/css.png
  AssetGenImage get css => const AssetGenImage('assets/images/css.png');

  /// File path: assets/images/firebase.png
  AssetGenImage get firebase =>
      const AssetGenImage('assets/images/firebase.png');

  /// File path: assets/images/flutterlogo.png
  AssetGenImage get flutterlogo =>
      const AssetGenImage('assets/images/flutterlogo.png');

  /// File path: assets/images/html5.jpeg
  AssetGenImage get html5 => const AssetGenImage('assets/images/html5.jpeg');

  /// File path: assets/images/logo.png
  AssetGenImage get logo => const AssetGenImage('assets/images/logo.png');

  /// File path: assets/images/logo1.jpeg
  AssetGenImage get logo1 => const AssetGenImage('assets/images/logo1.jpeg');

  /// File path: assets/images/logo2.png
  AssetGenImage get logo2 => const AssetGenImage('assets/images/logo2.png');

  /// File path: assets/images/logo3.jpg
  AssetGenImage get logo3 => const AssetGenImage('assets/images/logo3.jpg');

  /// File path: assets/images/logo4.png
  AssetGenImage get logo4 => const AssetGenImage('assets/images/logo4.png');

  /// File path: assets/images/logo5.jpeg
  AssetGenImage get logo5 => const AssetGenImage('assets/images/logo5.jpeg');

  /// File path: assets/images/logo6.png
  AssetGenImage get logo6 => const AssetGenImage('assets/images/logo6.png');

  /// File path: assets/images/logo7.jpeg
  AssetGenImage get logo7 => const AssetGenImage('assets/images/logo7.jpeg');

  /// File path: assets/images/logo8.jpg
  AssetGenImage get logo8 => const AssetGenImage('assets/images/logo8.jpg');

  /// File path: assets/images/logo9.jpg
  AssetGenImage get logo9 => const AssetGenImage('assets/images/logo9.jpg');

  /// File path: assets/images/lydia.png
  AssetGenImage get lydia => const AssetGenImage('assets/images/lydia.png');

  /// File path: assets/images/php.png
  AssetGenImage get php => const AssetGenImage('assets/images/php.png');

  /// File path: assets/images/preview.png
  AssetGenImage get preview => const AssetGenImage('assets/images/preview.png');

  /// File path: assets/images/teamplayer.jpg
  AssetGenImage get teamplayer =>
      const AssetGenImage('assets/images/teamplayer.jpg');

  /// File path: assets/images/wordpress.png
  AssetGenImage get wordpress =>
      const AssetGenImage('assets/images/wordpress.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        r,
        amazon,
        androidstudio,
        bear,
        css,
        firebase,
        flutterlogo,
        html5,
        logo,
        logo1,
        logo2,
        logo3,
        logo4,
        logo5,
        logo6,
        logo7,
        logo8,
        logo9,
        lydia,
        php,
        preview,
        teamplayer,
        wordpress
      ];
}

class Assets {
  Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;

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
    bool gaplessPlayback = true,
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
